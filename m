X-GM-THRID: 1526974119936
X-Received: by 10.152.19.100 with SMTP id d4mr669856lae.7.1424602921199;
        Sun, 22 Feb 2015 03:02:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.49 with SMTP id q17ls378522wiv.3.canary; Sun, 22 Feb
 2015 03:02:00 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr634602wiv.0.1424602920886;
        Sun, 22 Feb 2015 03:02:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si464206wib.2.2015.02.22.03.02.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 03:02:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,624,1418079600"; 
   d="scan'208";a="122864529"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 12:02:00 +0100
Date: Sun, 22 Feb 2015 12:01:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: Remove return
 in void function
In-Reply-To: <1424600285-20827-2-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221201290.2612@hadrien>
References: <1424600285-20827-1-git-send-email-aysemelikeyurtoglu@gmail.com> <1424600285-20827-2-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Melike Yurtoglu wrote:

> WARNING: void function return statements are not generally useful
> Remove return in void function.That was found by running checkpatch.

In future patches, please put a space after any punctuation (here a
period).

julia

> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/framework.c | 13 -------------
>  1 file changed, 13 deletions(-)
>
> diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
> index a93a90d..729069c 100644
> --- a/drivers/staging/lustre/lnet/selftest/framework.c
> +++ b/drivers/staging/lustre/lnet/selftest/framework.c
> @@ -173,7 +173,6 @@ sfw_add_session_timer(void)
>  	timer->stt_expires = cfs_time_add(sn->sn_timeout,
>  					  get_seconds());
>  	stt_add_timer(timer);
> -	return;
>  }
>
>  static int
> @@ -298,7 +297,6 @@ sfw_server_rpc_done(struct srpc_server_rpc *rpc)
>
>  	if (rpc->srpc_bulk != NULL)
>  		sfw_free_pages(rpc);
> -	return;
>  }
>
>  static void
> @@ -604,7 +602,6 @@ sfw_unload_test(struct sfw_test_instance *tsi)
>  	 * some buffers behind, but never mind... */
>  	srpc_service_remove_buffers(tsc->tsc_srv_service,
>  				    sfw_test_buffers(tsi));
> -	return;
>  }
>
>  static void
> @@ -638,7 +635,6 @@ sfw_destroy_test_instance(sfw_test_instance_t *tsi)
>  clean:
>  	sfw_unload_test(tsi);
>  	LIBCFS_FREE(tsi, sizeof(*tsi));
> -	return;
>  }
>
>  static void
> @@ -657,7 +653,6 @@ sfw_destroy_batch(sfw_batch_t *tsb)
>  	}
>
>  	LIBCFS_FREE(tsb, sizeof(sfw_batch_t));
> -	return;
>  }
>
>  void
> @@ -677,7 +672,6 @@ sfw_destroy_session(sfw_session_t *sn)
>
>  	LIBCFS_FREE(sn, sizeof(*sn));
>  	atomic_dec(&sfw_data.fw_nzombies);
> -	return;
>  }
>
>  static void
> @@ -722,7 +716,6 @@ sfw_unpack_addtest_req(srpc_msg_t *msg)
>  	}
>
>  	LBUG();
> -	return;
>  }
>
>  static int
> @@ -860,7 +853,6 @@ sfw_test_unit_done(sfw_test_unit_t *tsu)
>  	spin_unlock(&sfw_data.fw_lock);
>
>  	sfw_destroy_session(sn);
> -	return;
>  }
>
>  static void
> @@ -896,7 +888,6 @@ sfw_test_rpc_done(srpc_client_rpc_t *rpc)
>  	}
>
>  	sfw_test_unit_done(tsu);
> -	return;
>  }
>
>  int
> @@ -1556,7 +1547,6 @@ sfw_unpack_message(srpc_msg_t *msg)
>  	}
>
>  	LBUG();
> -	return;
>  }
>
>  void
> @@ -1568,7 +1558,6 @@ sfw_abort_rpc(srpc_client_rpc_t *rpc)
>  	spin_lock(&rpc->crpc_lock);
>  	srpc_abort_rpc(rpc, -EINTR);
>  	spin_unlock(&rpc->crpc_lock);
> -	return;
>  }
>
>  void
> @@ -1585,7 +1574,6 @@ sfw_post_rpc(srpc_client_rpc_t *rpc)
>  	srpc_post_rpc(rpc);
>
>  	spin_unlock(&rpc->crpc_lock);
> -	return;
>  }
>
>  static srpc_service_t sfw_services[] = {
> @@ -1800,5 +1788,4 @@ sfw_shutdown(void)
>  		LIBCFS_FREE(tsc, sizeof(*tsc));
>  	}
>
> -	return;
>  }
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424600285-20827-2-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

