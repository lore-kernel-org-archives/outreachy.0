Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E687EC
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 10:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650277773;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IxSWKWmPC+lM6Feu2DJuL3YwA5z0gMEjYtyNIzeoaoU=;
	b=TbWEj/VcaXiYrfkPuKLCuDLGTlmJm4RuPYafsbJCw9w1snUgLsL3EDm6DZi7nu54Evc9o2
	pwwLAFeqPTiVcnaLCUD5bjdK7/aFm8RqU2kSfngP6zLtdHCV32cVmA7lWatk1ItjJxNq45
	BrEdbocQIHhcdH6pj1qGbf5/gdwz0Mk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-510-KJT8CnwfO3ehA6XEVBVHug-1; Mon, 18 Apr 2022 06:29:30 -0400
X-MC-Unique: KJT8CnwfO3ehA6XEVBVHug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAF1885A5A8;
	Mon, 18 Apr 2022 10:29:29 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9A2CC9D54;
	Mon, 18 Apr 2022 10:29:29 +0000 (UTC)
Date: Mon, 18 Apr 2022 12:29:17 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH 0/4] enable passing multiple collections/tests to
 suboptions
Message-ID: <20220418122917.27fa1955@elisabeth>
In-Reply-To: <cover.1650215918.git.sevinj.aghayeva@gmail.com>
References: <cover.1650215918.git.sevinj.aghayeva@gmail.com>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 17 Apr 2022 13:27:17 -0400
Sevinj Aghayeva <sevinj.aghayeva@gmail.com> wrote:

> Enable mbuto's -C and -T options accept multiple collection names and test
> names, similar to the -c and -t options of run_kselftest.sh.

Thanks, this looks rather complete now. I just started reviewing the
series and I plan to finish reviewing/testing later today or early
tomorrow as I'm adding this kind of usage to demos and documentation
(also in progress).

Two smaller things I think we're missing:

- your patch 2/4 reverts the fix for "mbuto -h" with no fakeroot
  available (sorry, commit message of 6199e368 wasn't exceedingly
  clear). If fakeroot is not there, you don't even get a help message.

  Perhaps we could handle that as special case (in a second revision of
  patch 2, or as another patch), something on the lines of:

	if ! FAKEROOT="$(command -v fakeroot)"; then
		__missing_fakeroot=1
	fi

	...

	# after parsing options, and displaying usage if needed
	if [ ${__missing_fakeroot} -eq 1 ]; then
		err "Not root and no fakeroot available, exiting"
	fi

- with the 'kvm/qemu-kvm ... -initrd $(mbuto) ...' usage, we leave the
  image we built around. It could be deleted as soon as qemu is done
  reading it. I have two ideas (more welcome of course):

  1. use inotifywait(1) if available, use it (in a subshell) to watch
     for the IN_CLOSE_NOWRITE event on the file, then delete it after
     the event and close the subshell. If it's not available,
     'sleep 60' (perhaps with a warning) looks reasonable

  2. or check the parent PID from mbuto, once it terminates, delete the
     file and exit the subshell. I think it's more portable, but it
     might require some tricks (I haven't tried at all) to keep the
     subshell alive as long as it's needed

  ...in both cases, deletion should be configurable, I guess enabled by
  default if and only if we're running from a non-interactive
  context, that is, '$(mbuto)' as opposed to 'mbuto' on a command line.
  Check with [ ! -t 0 ]: if stdin (file descriptor 0) is not open, the
  user didn't start mbuto directly.

-- 
Stefano

