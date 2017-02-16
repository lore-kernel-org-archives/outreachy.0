X-GM-THRID: 6387794741064368128
X-Received: by 10.28.129.21 with SMTP id c21mr215598wmd.10.1487274684550;
        Thu, 16 Feb 2017 11:51:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.82 with SMTP id o79ls449241wmg.12.gmail; Thu, 16 Feb
 2017 11:51:23 -0800 (PST)
X-Received: by 10.223.142.113 with SMTP id n104mr227962wrb.18.1487274683936;
        Thu, 16 Feb 2017 11:51:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si89985wmn.2.2017.02.16.11.51.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 11:51:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,169,1484002800"; 
   d="scan'208";a="260837848"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 20:51:05 +0100
Date: Thu, 16 Feb 2017 20:51:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8192u: Replace symbolic
 permissions with octal permissions
In-Reply-To: <20170216194556.GA30632@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1702162049580.2121@hadrien>
References: <20170216194556.GA30632@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, simran singhal wrote:

> WARNING: Symbolic permissions 'S_IRUGO | S_IWUSR' are not preferred.
> Consider using octal permissions '0644'.
> This warning is detected by checkpatch.pl

This one has all the pieces in the right place, but please redo with the
suggestions on the previous version.

julia

> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> index a9a92d8..2ebc320 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> @@ -283,7 +283,7 @@ int __init ieee80211_debug_init(void)
>  				" proc directory\n");
>  		return -EIO;
>  	}
> -	e = proc_create("debug_level", S_IRUGO | S_IWUSR,
> +	e = proc_create("debug_level", 0644,
>  			      ieee80211_proc, &fops);
>  	if (!e) {
>  		remove_proc_entry(DRV_NAME, init_net.proc_net);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170216194556.GA30632%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

