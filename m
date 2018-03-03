X-GM-THRID: 6528703529529376768
X-Received: by 10.46.122.16 with SMTP id v16mr626040ljc.44.1520086037643;
        Sat, 03 Mar 2018 06:07:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.129.207 with SMTP id s15ls1289796ljg.10.gmail; Sat, 03 Mar
 2018 06:07:15 -0800 (PST)
X-Google-Smtp-Source: AG47ELtoyJjMPid5i7W7w1J3n2qA8zF/J+j3lONQzJnzYL5odsgkwbI/egTKEg46/20au/AhgPIx
X-Received: by 10.46.93.143 with SMTP id v15mr625468lje.1.1520086035397;
        Sat, 03 Mar 2018 06:07:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520086035; cv=none;
        d=google.com; s=arc-20160816;
        b=KNo4+zY1P1OMxLRnTPUVFwBPr9Sj/IoiT03v/j7aoGtBItd5rj6gELsoOOlodmTww+
         ITz/zECL4HtT9mTW3NfZM0Y0KBSKfcivvi+VtBEdK8LJjUq9jZrA4d44uGdIRVNqyL4R
         swUyPFVxzPuDbffboX2IdL9BkPy6EzNWUnoK1oS9KK61s3Dszu1ltUZ375HP5O5CLOny
         w3KAMzlUcnWIH5ZK29Mw5uXePbsZqt75s9Q2cQWvwtjnY8yNlwzOrsPjtmXsubXlj5ua
         IzFF3lVqPsO8pYogIX+cMAPLmLmWz27pj3SCQNbebZtIIDcb4B7H7HCDTDApjfRKbqTe
         eIJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=HUvmxSq8oWiEC1hf0ydF53t08JoQO/PRp/yBiMDTVwc=;
        b=HjHq6jXrWYHzRgVegiBBzKWsJxPEvbzViveLx8pdo07Wo368LJwBm/hqjWtJhUKxnu
         2ELfs3etogb0gemMF7VZ/xwu4ecwkIsBeE8nJ88Og7GNH8kNTJ5pOgi+xSl5nljgoDj7
         UPs2O9LzFBd7zY0M+Z/sihX3Y4ym10m1EQVA2n7b2FiuTLm2KvsHaGqjy9FmdWooEfxJ
         a2l2ym9olAQL12rC2szJ0QeuvqafVn7AHMCD0NwriM+R07Q44LPdQIV4+0CyW3K8oGmC
         TEcj9GE5H9RGzt4+D7Dv6J4Cccj3jHLz7PdL++3pbHGrMWOz4HicHfSkC09Y2e6xGPvy
         bGtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u72si331686lfi.4.2018.03.03.06.07.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 06:07:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="256828695"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 15:07:14 +0100
Date: Sat, 3 Mar 2018 15:07:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: dennis.dalessandro@intel.com, mike.marciniszyn@intel.com, 
    Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
    linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] infiniband: hw: Drop unnecessary
 continue
In-Reply-To: <20180303130336.GA8210@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803031506550.2302@hadrien>
References: <20180303130336.GA8210@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Arushi Singhal wrote:

> Continue at the bottom of a loop are removed.
> Issue found using drop_continue.cocci Coccinelle script.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/infiniband/hw/qib/qib_init.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/infiniband/hw/qib/qib_init.c b/drivers/infiniband/hw/qib/qib_init.c
> index 3990f38..1bd3b32 100644
> --- a/drivers/infiniband/hw/qib/qib_init.c
> +++ b/drivers/infiniband/hw/qib/qib_init.c
> @@ -681,7 +681,6 @@ int qib_init(struct qib_devdata *dd, int reinit)
>  		if (lastfail) {
>  			qib_dev_err(dd,
>  				"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
> -			continue;
>  		}

Again, the braces should be dropped too.

julia

>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180303130336.GA8210%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

