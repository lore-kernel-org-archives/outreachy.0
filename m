X-GM-THRID: 1526974119936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7ff0cbb979278efc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.235.162 with SMTP id un2mr1965826pac.43.1424975130539;
        Thu, 26 Feb 2015 10:25:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.164 with SMTP id x33ls237101qgx.77.gmail; Thu, 26 Feb
 2015 10:25:30 -0800 (PST)
X-Received: by 10.236.25.102 with SMTP id y66mr9298742yhy.40.1424975130281;
        Thu, 26 Feb 2015 10:25:30 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si227865pbc.0.2015.02.26.10.25.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:25:30 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 02B85B8A;
	Thu, 26 Feb 2015 18:25:29 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:25:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: lustre: Remove return in
 void function
Message-ID: <20150226182529.GB23634@kroah.com>
References: <1424600285-20827-1-git-send-email-aysemelikeyurtoglu@gmail.com>
 <1424600285-20827-2-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424600285-20827-2-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 12:18:05PM +0200, Melike Yurtoglu wrote:
> WARNING: void function return statements are not generally useful
> Remove return in void function.That was found by running checkpatch.
> 
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

You should also remove the extra line here.

thanks,

greg k-h

