Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5DE63219
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 15:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650035440;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lFChXUs4p84MiqnGixmnnIH8xqiuLzwfvunmVAsU7QE=;
	b=Gtszmc5a21xVVCxVYH6kS2GZYtaErK8PbSZFcTOzTm6T95i29FiFSkEdwT2RdcddUENLPv
	NwORMeUC7FCbNytpHjSLISMV2Auu9f2aJrTjStOGh8LCCcnuSH3dp6hbDvczePpWXBR+8h
	1sMmNAUy4a51S7xdRuWgkEaYtXMWjoA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-120-PCHog0XsOvKfuBgEsk2ajQ-1; Fri, 15 Apr 2022 11:10:39 -0400
X-MC-Unique: PCHog0XsOvKfuBgEsk2ajQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41C451C04B64;
	Fri, 15 Apr 2022 15:10:39 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 13A7A145B97B;
	Fri, 15 Apr 2022 15:10:39 +0000 (UTC)
Date: Fri, 15 Apr 2022 17:10:37 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] mbuto: add a function to find the difference of two
 lists
Message-ID: <20220415171037.0e610a6c@elisabeth>
In-Reply-To: <20220415040312.GA769838@euclid>
References: <20220415040312.GA769838@euclid>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Applied, with a couple of minor changes:

On Fri, 15 Apr 2022 00:03:12 -0400
Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:

> Adds a function to find the difference of two lists and use that function to

Used imperative mood ("add") for consistency (with e.g. "use").

> determine the list of missing modules.

Wrapped this to 70 columns -- somewhat arbitrary, I don't even think
there's consensus on current kernel practices, somebody uses 72 or even
76 columns.

Rationale: allow email discussion at a reasonable thread depth without
further wrapping in a "small" terminal.

> Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
> ---
>  mbuto | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/mbuto b/mbuto
> index 74c81eb..14176c3 100755
> --- a/mbuto
> +++ b/mbuto
> @@ -245,15 +245,8 @@ profile_kselftests() {
>  
>  		KMODS="$(${BASENAME} -a -s .ko ${KMODS})"
>  
> -		__kmods_missing=
> -		for __n in ${__kmods_needed}; do
> -			__found=0
> -			for __f in ${KMODS}; do
> -				[ ${__n} = ${__f} ] && __found=1
> -			done
> -			[ ${__found} -eq 0 ] && \
> -				__kmods_missing="${__n} ${__kmods_missing}"
> -		done
> +		__kmods_missing=$(list_diff "${__kmods_needed}" "${KMODS}")
> +
>  		if [ ! -z "${__kmods_missing}" ]; then
>  			notice "WARNING: missing modules: ${__kmods_missing}"
>  		fi
> @@ -426,6 +419,22 @@ workers() {
>  	while ! ${RMDIR} "${__sync_dir}" 2>/dev/null; do ${SLEEP} 1; done
>  }
>  
> +# list_diff() - Given two lists, $1 and $2, returns the tokens that exist in $1

Imperative mode ("return" instead of "returns") for consistency, made
it a bit shorter so that it fits on one line (for readability).

> +# but not in $2
> +# $1: list
> +# $2: list

Tabs to separate, and a slightly more informative description of the
arguments.

> +list_diff() {
> +	__diff=
> +	for __e1 in ${1}; do
> +		__found=0
> +		for __e2 in ${2}; do
> +			[ ${__e1} = ${__e2} ] && __found=1
> +		done
> +		[ ${__found} -eq 0 ] && __diff="${__e1} ${__diff}"
> +	done
> +	printf '%s' "${__diff}"
> +}
> +
>  ################################################################################
>  
>  

-- 
Stefano

