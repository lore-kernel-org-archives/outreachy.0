Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65187613E
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 11:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Q3OjgKV0AFPpXWafpes8D/6AldV0P/eKoJV47irS0Ts=;
  b=RpwBQNF2JbxiigfQtJuxjtsYh719xycstxfkCcX/vnkGaEL0PPIxpNIJ
   zCRrJnERABSAg3hAQn6cnQMwzcnWxbo/tneAA0ASoPBVAdMDJmmg540m3
   Z/GNtIwZkPuoTLL16xegxAfSHKLFX6Q3jOwzIlmBfAj1r1UKr7RoGnxth
   E=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="49563648"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 12:49:58 +0100
Date: Wed, 8 Mar 2023 12:49:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Introductory message
In-Reply-To: <20230308114122.GA312977@ubuntu>
Message-ID: <12ef38a-fd4c-947c-4ea3-a641ef5b1310@inria.fr>
References: <20230308114122.GA312977@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2023, Sumitra Sharma wrote:

> Hi I am Sumitra Sharma, an outreachy applicant. This is my first time
> applying to outreachy and linux-kernel. I am currently working on
> setting up the enviornment. I observed that building the kernel i.e.
> running "make -j2" command itself is taking a lot of time. I would
> appreciate some suggestions on it.

I think it would take a lot of time...

You may be able to optimize your configuration to what modules are
actually used on your machine, rather than everything that your distro
wants to offer.  Maybe make localconfig.

> Also I recieved an error stating "make[2]: *** No rule to make target
> 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.
> Stop." to which I edited the .config file as below
> #
> # Certificates for signature checking
> #
> CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"

I just have "" as the string.

julia

> CONFIG_MODULE_SIG_KEY_TYPE_RSA=y
> # CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
> CONFIG_SYSTEM_TRUSTED_KEYRING=y
> CONFIG_SYSTEM_TRUSTED_KEYS=""
> CONFIG_SYSTEM_EXTRA_CERTIFICATE=y
> CONFIG_SYSTEM_EXTRA_CERTIFICATE_SIZE=4096
> CONFIG_SECONDARY_TRUSTED_KEYRING=y
> CONFIG_SYSTEM_BLACKLIST_KEYRING=y
> CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
> CONFIG_SYSTEM_REVOCATION_LIST=y
> CONFIG_SYSTEM_REVOCATION_KEYS=""
> # CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE is not set
> # end of Certificates for signature checking
>
>
