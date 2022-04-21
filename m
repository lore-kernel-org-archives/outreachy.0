Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B761FC0
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650556627;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=svhKzRTLqLpmiZywq8SDtPk7c6bfFRgn1gYT5giDONM=;
	b=E/0YCFMvZj1zp9H+3rsy+McHbf85zywKDgOPFmcGZXdMFKiVM2FJVmmTPWjNNn/Ty90y1P
	TdtsRjS6HP5Tgofyp+R3ldv5jqFW+nzpF1U+K/cuajVpJ7DCX9sRcAxAHwXbuFxEvdl4Dk
	LQD/Cns3BYl+XXkg/q+06YOC5iMABRw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-301-k_WgOOX_OA2VUZubQoootg-1; Thu, 21 Apr 2022 11:57:03 -0400
X-MC-Unique: k_WgOOX_OA2VUZubQoootg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49A7B281AF06;
	Thu, 21 Apr 2022 15:57:03 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1A0F9415F56;
	Thu, 21 Apr 2022 15:57:03 +0000 (UTC)
Date: Thu, 21 Apr 2022 17:56:48 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mbuto: always display help message
Message-ID: <20220421175648.13570c38@elisabeth>
In-Reply-To: <20220418165519.GA54466@euclid>
References: <20220418165519.GA54466@euclid>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Sevinj,

Sorry for the delay, I'm finally testing this and updating the demos
around it.

The previous series looks fine (I'm hitting some issues with
grep, still checking). However, this:

On Mon, 18 Apr 2022 12:55:19 -0400
Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:

> [...]
>
>  # If we're not running as root, re-run with fakeroot
> -if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
> -	if ! FAKEROOT="$(command -v fakeroot)"; then
> -		err "Not root and no fakeroot available, exiting"
> -	fi
> -	PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"

...breaks everything, that is, options are not passed anymore, the
"base" profile is always selected, because:

> -	exit ${?}
> +__not_root_and_missing_fakeroot=0
> +if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ] && \
> +		! FAKEROOT="$(command -v fakeroot)"; then
> +	__not_root_and_missing_fakeroot=1
>  fi
>  
>  # Parse options
> @@ -1204,6 +1202,14 @@ while getopts :c:df:k:m:p:s:vh __opt; do
>  	esac
>  done
>  shift $((OPTIND - 1))
> +
> +if [ ${__not_root_and_missing_fakeroot} -eq 1 ]; then
> +	err "Not root and no fakeroot available, exiting"
> +elif [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ]; then
> +	PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"

$@ here doesn't contain options anymore, being that it comes after
shift $((OPTIND - 1)), which renumbers (shifts) positional parameters
in a way that $1, at this point, is the first non-option argument.

And $@ follows the same pattern: the first token in it will be $1 now.

I'm replacing this with something like:

diff --git a/mbuto b/mbuto
index 49b8139..6918415 100755
--- a/mbuto
+++ b/mbuto
@@ -1179,10 +1179,11 @@ usage() {
 # If we're not running as root, re-run with fakeroot
 if [ "${LD_PRELOAD}" != "libfakeroot-sysv.so" ] && [ "$(id -u)" -ne 0 ]; then
        if ! FAKEROOT="$(command -v fakeroot)"; then
-               err "Not root and no fakeroot available, exiting"
+               __fakeroot_missing="y"
+       else
+               PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
+               exit ${?}
        fi
-       PATH="${PATH}:/sbin:/usr/sbin" "${FAKEROOT}" "${0}" "${@}"
-       exit ${?}
 fi
 
 # Parse options
@@ -1206,6 +1207,11 @@ done
 shift $((OPTIND - 1))
 [ -z "${PROFILE}" ] && PROFILE="base"
 
+if [ "${__fakeroot_missing}" = "y" ]; then
+       err "Not root and no fakeroot available, exiting"
+       exit 1
+fi
+

and I would push it (please have a look, first!) together with your series as
soon as I get the demo to work with test collections.

-- 
Stefano

