X-GM-THRID: 6465116132895358976
X-Received: by 10.28.0.7 with SMTP id 7mr152230wma.26.1505281933327;
        Tue, 12 Sep 2017 22:52:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.218.193 with SMTP id r184ls711073wmg.13.gmail; Tue, 12 Sep
 2017 22:52:12 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBYrM2iSiSHhx830lvJ48oprYuEAPQFrQAxsZJTPryMblDRMODxzUa82YR/CpJd5CGUVZzC
X-Received: by 10.28.71.131 with SMTP id m3mr161871wmi.19.1505281932354;
        Tue, 12 Sep 2017 22:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505281932; cv=none;
        d=google.com; s=arc-20160816;
        b=oeWIi5FdM5HlrlsTO64GMbjJ8JqhIQvlDXYVufF8HsTw7Hgm38X1m+YJ6SElRLhR/J
         LkjMqi6FdeZda8ngU0P0LHycMXHcsmsPjwDx95sqcFLMZ6mFirPuaN24U0cpzYc/S+y5
         afDxdsqjPLhFKPH9Y0vpI9GQiWxUY0NiqzcznVOmuPRg4f29Gxq5a8ISODnjDrOfwEuU
         Ydoy9uyII0oowMjNpuFyfkbrgu5t99LpjSjtlaNCXEQPBjWr5rzayHQhnwlcZ2qpmPqj
         xGGC7ZNGZmjcljvPbdBRyTvUWn+IwiRWRW9tKDZNZTjkGfILSXovN/pRFozNGwKyL6ks
         tPwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=CrnNdPJlVdRXZrmtqgamjswQjVqf15iqP3b2IxfMOYs=;
        b=OhxRiV2MVfMdZWWsm+Pc05cegF41mQ4gNPI5eBSmpV8tbVxRsJyunKUVK6jm46GtcB
         E1xIk2Qpt3VSo+XehAPV05WBPMG3z5MPWhPGe0K0/fFBtmcSQSolALPZcgGmoLtVAa63
         HxoF5rs5PZOQ/6TEBdch8yJmtNo+J3LmHsbRnKgaJnUqR35h7vHXUItVLl0RXDp4Ywn+
         PuGl5P/PkZThT1GaaRnsNqctI2gBoVAZdADA1HdNTIl2FQMj802k5EGqaRuNxnMdmc3w
         smm3m55mjhNwKQ/+TfxDmb89dlYnj77PYWpEbh5uirac9MV9aHReaqK6/pjOUX/cr/4O
         EnbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si37623wmd.1.2017.09.12.22.52.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 22:52:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,386,1500933600"; 
   d="scan'208";a="290797309"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 07:51:49 +0200
Date: Wed, 13 Sep 2017 07:51:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Replace pr_debug
 with netdev_dbg
In-Reply-To: <20170913043225.GA9679@Haneen>
Message-ID: <alpine.DEB.2.20.1709130750040.2354@hadrien>
References: <20170913043225.GA9679@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Sep 2017, Haneen Mohammed wrote:

> This patch replace pr_debug with netdev_dbg when appropriate net_device
> structure is found.
> Issue found using the following Coccinelle script:
>
> @r exists@
> identifier f, s, i;
> position p;
> @@
>
> f(...,struct s *i,...) {
> <+... when != i == NULL
> (
> pr_err@p(...);
> |
> pr_info@p(...);
> |
> pr_debug@p(...);
> )
> ...+>
> }
>
> @rr@
> identifier r.s, fld;
> @@
>
> struct s {
> 	...
> 	struct net_device *fld;
> 	... };
>
> @@
> identifier r.i, r.s, rr.fld;
> position r.p;
> @@
> (
> -pr_err@p
> +netdev_err
> 	(
> + i->fld,
> ...)
> |
> -pr_info@p
> +netdev_info
> 	(
> + i->fld,
> ...)
> |
> -pr_debug@p
> +netdev_dbg
> 	(
> + i->fld,
> ...)
> )
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

In each case, you would want to check that the value of the parameter
cannot be NULL.  It's find in this case because every function starts by
accessing a field of wlandev, and the variable is never updated in the
middle of a function.

julia


> ---
>  drivers/staging/wlan-ng/prism2mgmt.c | 78 ++++++++++++++++++++++--------------
>  1 file changed, 47 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
> index c4aa9e7..7207059 100644
> --- a/drivers/staging/wlan-ng/prism2mgmt.c
> +++ b/drivers/staging/wlan-ng/prism2mgmt.c
> @@ -394,8 +394,9 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
>  		count = HFA384x_SCANRESULT_MAX;
>
>  	if (req->bssindex.data >= count) {
> -		pr_debug("requested index (%d) out of range (%d)\n",
> -			 req->bssindex.data, count);
> +		netdev_dbg(wlandev->netdev,
> +			   "requested index (%d) out of range (%d)\n",
> +			   req->bssindex.data, count);
>  		result = 2;
>  		req->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
>  		goto exit;
> @@ -684,7 +685,8 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
>
>  	goto done;
>  failed:
> -	pr_debug("Failed to set a config option, result=%d\n", result);
> +	netdev_dbg(wlandev->netdev,
> +		   "Failed to set a config option, result=%d\n", result);
>  	msg->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
>
>  done:
> @@ -1120,15 +1122,17 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  		/* Disable monitor mode */
>  		result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_DISABLE);
>  		if (result) {
> -			pr_debug("failed to disable monitor mode, result=%d\n",
> -				 result);
> +			netdev_dbg(wlandev->netdev,
> +				   "failed to disable monitor mode, result=%d\n",
> +				   result);
>  			goto failed;
>  		}
>  		/* Disable port 0 */
>  		result = hfa384x_drvr_disable(hw, 0);
>  		if (result) {
> -			pr_debug
> -			("failed to disable port 0 after sniffing, result=%d\n",
> +			netdev_dbg
> +			(wlandev->netdev,
> +			     "failed to disable port 0 after sniffing, result=%d\n",
>  			     result);
>  			goto failed;
>  		}
> @@ -1140,8 +1144,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  						  HFA384x_RID_CNFWEPFLAGS,
>  						  hw->presniff_wepflags);
>  		if (result) {
> -			pr_debug
> -			    ("failed to restore wepflags=0x%04x, result=%d\n",
> +			netdev_dbg
> +			    (wlandev->netdev,
> +			     "failed to restore wepflags=0x%04x, result=%d\n",
>  			     hw->presniff_wepflags, result);
>  			goto failed;
>  		}
> @@ -1153,8 +1158,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  						  HFA384x_RID_CNFPORTTYPE,
>  						  word);
>  			if (result) {
> -				pr_debug
> -				    ("failed to restore porttype, result=%d\n",
> +				netdev_dbg
> +				    (wlandev->netdev,
> +				     "failed to restore porttype, result=%d\n",
>  				     result);
>  				goto failed;
>  			}
> @@ -1162,8 +1168,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  			/* Enable the port */
>  			result = hfa384x_drvr_enable(hw, 0);
>  			if (result) {
> -				pr_debug("failed to enable port to presniff setting, result=%d\n",
> -					 result);
> +				netdev_dbg(wlandev->netdev,
> +					   "failed to enable port to presniff setting, result=%d\n",
> +					   result);
>  				goto failed;
>  			}
>  		} else {
> @@ -1182,8 +1189,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  						  HFA384x_RID_CNFPORTTYPE,
>  						  &(hw->presniff_port_type));
>  				if (result) {
> -					pr_debug
> -					("failed to read porttype, result=%d\n",
> +					netdev_dbg
> +					(wlandev->netdev,
> +					     "failed to read porttype, result=%d\n",
>  					     result);
>  					goto failed;
>  				}
> @@ -1192,24 +1200,27 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  						  HFA384x_RID_CNFWEPFLAGS,
>  						  &(hw->presniff_wepflags));
>  				if (result) {
> -					pr_debug
> -					("failed to read wepflags, result=%d\n",
> +					netdev_dbg
> +					(wlandev->netdev,
> +					     "failed to read wepflags, result=%d\n",
>  					     result);
>  					goto failed;
>  				}
>  				hfa384x_drvr_stop(hw);
>  				result = hfa384x_drvr_start(hw);
>  				if (result) {
> -					pr_debug("failed to restart the card for sniffing, result=%d\n",
> -						 result);
> +					netdev_dbg(wlandev->netdev,
> +						   "failed to restart the card for sniffing, result=%d\n",
> +						   result);
>  					goto failed;
>  				}
>  			} else {
>  				/* Disable the port */
>  				result = hfa384x_drvr_disable(hw, 0);
>  				if (result) {
> -					pr_debug("failed to enable port for sniffing, result=%d\n",
> -						 result);
> +					netdev_dbg(wlandev->netdev,
> +						   "failed to enable port for sniffing, result=%d\n",
> +						   result);
>  					goto failed;
>  				}
>  			}
> @@ -1225,8 +1236,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  		hw->sniff_channel = word;
>
>  		if (result) {
> -			pr_debug("failed to set channel %d, result=%d\n",
> -				 word, result);
> +			netdev_dbg(wlandev->netdev,
> +				   "failed to set channel %d, result=%d\n",
> +				   word, result);
>  			goto failed;
>  		}
>
> @@ -1238,8 +1250,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  						  HFA384x_RID_CNFPORTTYPE,
>  						  word);
>  			if (result) {
> -				pr_debug
> -				    ("failed to set porttype %d, result=%d\n",
> +				netdev_dbg
> +				    (wlandev->netdev,
> +				     "failed to set porttype %d, result=%d\n",
>  				     word, result);
>  				goto failed;
>  			}
> @@ -1257,8 +1270,9 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  			}
>
>  			if (result) {
> -				pr_debug
> -				  ("failed to set wepflags=0x%04x, result=%d\n",
> +				netdev_dbg
> +				  (wlandev->netdev,
> +				   "failed to set wepflags=0x%04x, result=%d\n",
>  				   word, result);
>  				goto failed;
>  			}
> @@ -1283,16 +1297,18 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
>  		/* Enable the port */
>  		result = hfa384x_drvr_enable(hw, 0);
>  		if (result) {
> -			pr_debug
> -			    ("failed to enable port for sniffing, result=%d\n",
> +			netdev_dbg
> +			    (wlandev->netdev,
> +			     "failed to enable port for sniffing, result=%d\n",
>  			     result);
>  			goto failed;
>  		}
>  		/* Enable monitor mode */
>  		result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_ENABLE);
>  		if (result) {
> -			pr_debug("failed to enable monitor mode, result=%d\n",
> -				 result);
> +			netdev_dbg(wlandev->netdev,
> +				   "failed to enable monitor mode, result=%d\n",
> +				   result);
>  			goto failed;
>  		}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913043225.GA9679%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

