X-GM-THRID: 9881078726656
X-Received: by 10.112.213.100 with SMTP id nr4mr2911278lbc.10.1427351637273;
        Wed, 25 Mar 2015 23:33:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.171 with SMTP id nd11ls1407039wic.50.canary; Wed, 25
 Mar 2015 23:33:56 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr2948674wjc.5.1427351636936;
        Wed, 25 Mar 2015 23:33:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bz6si1086015wib.3.2015.03.25.23.33.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 25 Mar 2015 23:33:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,469,1422918000"; 
   d="scan'208";a="107180405"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Mar 2015 07:33:56 +0100
Date: Thu, 26 Mar 2015 07:33:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Helen Fornazier <helen.fornazier@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: i2o: Remove indentation of
 labels
In-Reply-To: <1427328162-6345-1-git-send-email-helen.fornazier@gmail.com>
Message-ID: <alpine.DEB.2.02.1503260732230.2066@localhost6.localdomain6>
References: <1427328162-6345-1-git-send-email-helen.fornazier@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

i2o is on the way out of the kernel.  So there is no point to mae patches 
on it.  You can find the list of the directories to avoid in the tutorial, 
in the section Find a driver to clean up.

julia

On Wed, 25 Mar 2015, Helen Fornazier wrote:

> This patch fixes the checkpatche.pl warnings:
> 
> WARNING: labels should not be indented
> +      context_remove:
> 
> WARNING: labels should not be indented
> +      nop_msg:
> 
> WARNING: labels should not be indented
> +      exit:
> 
> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  drivers/staging/i2o/i2o_block.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/i2o/i2o_block.c b/drivers/staging/i2o/i2o_block.c
> index 7784787..406758f 100644
> --- a/drivers/staging/i2o/i2o_block.c
> +++ b/drivers/staging/i2o/i2o_block.c
> @@ -871,13 +871,13 @@ static int i2o_block_transfer(struct request *req)
>  
>  	return 0;
>  
> -      context_remove:
> +context_remove:
>  	i2o_cntxt_list_remove(c, req);
>  
> -      nop_msg:
> +nop_msg:
>  	i2o_msg_nop(c, msg);
>  
> -      exit:
> +exit:
>  	return rc;
>  };
>  
> @@ -1002,13 +1002,13 @@ static struct i2o_block_device *i2o_block_device_alloc(void)
>  
>  	return dev;
>  
> -      cleanup_queue:
> +cleanup_queue:
>  	put_disk(gd);
>  
> -      cleanup_dev:
> +cleanup_dev:
>  	kfree(dev);
>  
> -      exit:
> +exit:
>  	return ERR_PTR(rc);
>  };
>  
> @@ -1115,10 +1115,10 @@ static int i2o_block_probe(struct device *dev)
>  
>  	return 0;
>  
> -      claim_release:
> +claim_release:
>  	i2o_device_claim_release(i2o_dev);
>  
> -      exit:
> +exit:
>  	return rc;
>  };
>  
> @@ -1187,16 +1187,16 @@ static int __init i2o_block_init(void)
>  
>  	return 0;
>  
> -      unregister_blkdev:
> +unregister_blkdev:
>  	unregister_blkdev(I2O_MAJOR, "i2o_block");
>  
> -      free_mempool:
> +free_mempool:
>  	mempool_destroy(i2o_blk_req_pool.pool);
>  
> -      free_slab:
> +free_slab:
>  	kmem_cache_destroy(i2o_blk_req_pool.slab);
>  
> -      exit:
> +exit:
>  	return rc;
>  };
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1427328162-6345-1-git-send-email-helen.fornazier%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

