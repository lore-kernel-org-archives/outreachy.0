X-GM-THRID: 6338844661403090944
X-Received: by 10.25.10.131 with SMTP id 125mr1519124lfk.17.1475906701068;
        Fri, 07 Oct 2016 23:05:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.69 with SMTP id 66ls570936ljb.1.gmail; Fri, 07 Oct 2016
 23:05:00 -0700 (PDT)
X-Received: by 10.46.9.131 with SMTP id 125mr1545274ljj.14.1475906700194;
        Fri, 07 Oct 2016 23:05:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u64si414561wmf.0.2016.10.07.23.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 23:05:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,311,1473112800"; 
   d="scan'208";a="196056384"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2016 08:04:59 +0200
Date: Sat, 8 Oct 2016 08:04:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Delete unnecessary
 return statement
In-Reply-To: <20161007215439.GA15407@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610080804270.7750@hadrien>
References: <20161007215439.GA15407@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Mihaela Muraru wrote:

> This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
>
> WARNING: void function return statements are not generally useful.
>
> The 'return' statement is not useful here, because it is not necessary to be
> forced the exit of the function.
>
> Like in this example:
>
> void funct() {
>
> 	if(condition) return;
>
> 	//do something;
>
> }

The patch is OK, but I don't understand what you mean by thi example.
This looks like a case where the return cannot be removed.

julia

>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 8 --------
>  1 file changed, 8 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 8798b63..5ae013b 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -1933,7 +1933,6 @@ void hostif_sme_set_wep(struct ks_wlan_private *priv, int type)
>  		break;
>  	}
>
> -	return;
>  }
>
>  struct wpa_suite_t {
> @@ -2122,7 +2121,6 @@ void hostif_sme_set_rsn(struct ks_wlan_private *priv, int type)
>  		break;
>
>  	}
> -	return;
>  }
>
>  static
> @@ -2236,7 +2234,6 @@ void hostif_sme_mode_setup(struct ks_wlan_private *priv)
>  		break;
>  	}
>
> -	return;
>  }
>
>  static
> @@ -2337,7 +2334,6 @@ void hostif_sme_powermgt_set(struct ks_wlan_private *priv)
>  	}
>  	hostif_power_mngmt_request(priv, mode, wake_up, receiveDTIMs);
>
> -	return;
>  }
>
>  static
> @@ -2355,7 +2351,6 @@ void hostif_sme_sleep_set(struct ks_wlan_private *priv)
>  		break;
>  	}
>
> -	return;
>  }
>
>  static
> @@ -2413,7 +2408,6 @@ void hostif_sme_set_key(struct ks_wlan_private *priv, int type)
>  				       &priv->wpa.key[2].rx_seq[0]);
>  		break;
>  	}
> -	return;
>  }
>
>  static
> @@ -2649,7 +2643,6 @@ void hostif_sme_task(unsigned long dev)
>  				tasklet_schedule(&priv->sme_task);
>  		}
>  	}
> -	return;
>  }
>
>  /* send to Station Management Entity module */
> @@ -2733,5 +2726,4 @@ int hostif_init(struct ks_wlan_private *priv)
>  void hostif_exit(struct ks_wlan_private *priv)
>  {
>  	tasklet_kill(&priv->sme_task);
> -	return;
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161007215439.GA15407%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

