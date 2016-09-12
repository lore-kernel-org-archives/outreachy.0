X-GM-THRID: 6329524753040146432
X-Received: by 10.46.33.219 with SMTP id h88mr363378lji.5.1473715118866;
        Mon, 12 Sep 2016 14:18:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.23 with SMTP id m23ls1544774wma.3.gmail; Mon, 12 Sep
 2016 14:18:38 -0700 (PDT)
X-Received: by 10.194.104.230 with SMTP id gh6mr3018500wjb.7.1473715118396;
        Mon, 12 Sep 2016 14:18:38 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si800924wmw.0.2016.09.12.14.18.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:18:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,324,1470693600"; 
   d="scan'208";a="236181940"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 23:18:37 +0200
Date: Mon, 12 Sep 2016 23:18:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove unused function
 vnt_key_init_table
In-Reply-To: <1473707299-29700-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609122318060.3549@hadrien>
References: <1473707299-29700-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, Bhumika Goyal wrote:

> The function vnt_key_init_table is not used anywhere in the kernel.
> Therefore, remove the function definition and prototype.
> Grepped to find occurences.
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/vt6655/key.c | 10 ----------
>  drivers/staging/vt6655/key.h |  2 --
>  2 files changed, 12 deletions(-)
>
> diff --git a/drivers/staging/vt6655/key.c b/drivers/staging/vt6655/key.c
> index ffcaf25..e161d5d 100644
> --- a/drivers/staging/vt6655/key.c
> +++ b/drivers/staging/vt6655/key.c
> @@ -31,16 +31,6 @@
>  #include "key.h"
>  #include "mac.h"
>
> -int vnt_key_init_table(struct vnt_private *priv)
> -{
> -	u32 i;
> -
> -	for (i = 0; i < MAX_KEY_TABLE; i++)
> -		MACvDisableKeyEntry(priv, i);

Nice to see things go.  Did you check whether there are other uses of
MAX_KEY_TABLE and MACvDisableKeyEntry?

julia

> -
> -	return 0;
> -}
> -
>  static int vnt_set_keymode(struct ieee80211_hw *hw, u8 *mac_addr,
>  	struct ieee80211_key_conf *key, u32 key_type, u32 mode,
>  	bool onfly_latch)
> diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
> index 261f818..d7271974 100644
> --- a/drivers/staging/vt6655/key.h
> +++ b/drivers/staging/vt6655/key.h
> @@ -61,8 +61,6 @@
>
>  struct vnt_private;
>
> -int vnt_key_init_table(struct vnt_private *);
> -
>  int vnt_set_keys(struct ieee80211_hw *hw, struct ieee80211_sta *sta,
>  		 struct ieee80211_vif *vif, struct ieee80211_key_conf *key);
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1473707299-29700-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

