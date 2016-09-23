X-GM-THRID: 6332991195333001216
X-Received: by 10.13.250.129 with SMTP id k123mr1294985ywf.1.1474613289628;
        Thu, 22 Sep 2016 23:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.88 with SMTP id r85ls331680itc.0.canary; Thu, 22 Sep
 2016 23:48:07 -0700 (PDT)
X-Received: by 10.107.176.80 with SMTP id z77mr1188376ioe.52.1474613287074;
        Thu, 22 Sep 2016 23:48:07 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id um12si1723388pab.2.2016.09.22.23.48.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 23:48:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hi10so4624148pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 23:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=26qnCTH2QKnyJL7xX9wDeJHmztmjXudCBn9/ylEYjiw=;
        b=Tg9OKZdLtGNmmlVL1DxrMyAH2ubFe/hSXphnRB/g15lkjia9IWeVLTZ93B2aO91DiT
         O8nckroCLXbeHvXJf/74cuuWD5bDiEn9XF/A2v90C6VRGs7x5N1GZgBgjj/qLZVYZOR1
         Ljfwt4VHhv5raoweA/phHJxzM3V0No+0UUQPmXtnRi5d7Bh8d3LO4b3R8gsoLtkvZfMU
         dY9HzziBFp34z1S95EZbdAevn+8dPeqkMyc8p0RVZnsHjLhWR//n0O2CRPFOFl5i7M0/
         KvDqlnRLWqqrepA7dQ0349W6HKtbJL/kWNrbPtywBeheu1l/fYzryzR2iH6WDxTDCPgA
         JiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=26qnCTH2QKnyJL7xX9wDeJHmztmjXudCBn9/ylEYjiw=;
        b=iGkfN4tytsrd8H+Ao9+i68XbANMsX6YBoSnf5aPGwkTgvHSXHgIifoE9pEXZdTAfjv
         6jk/wTSFhUYwpD4K8NdzU9UOS6IQw9ZEcugvMRSGb3rovlhZ4k4PqsIhy6nGfxCleTWL
         PQLgqa/JUy9+aRaUCP72fn9SoHwPAaBxVZDAr9ts2IiZIowHTApUu1sospMspN95a0Z0
         rUF9WIXM/TyUZ4Y2a4YGfzGiFOFYY2MOnQ7kiSmbFGjdCNKIVyyu6g8skU62Xgd2ZT8s
         Z4E1/eaQjoFujT21TVhgtnAwUo2a9iKlhwBvJ5L/UoArcVXAVVj5x4LVQS27N6CKdulH
         9atw==
X-Gm-Message-State: AE9vXwPJdZIxWByQXLcJXGZMGIth50WhCgvoz6jYXY9OiRl/uxSuTglLn0aIje5wH9i12A==
X-Received: by 10.67.7.34 with SMTP id cz2mr9706567pad.173.1474613286734;
        Thu, 22 Sep 2016 23:48:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id b188sm5673035pfa.82.2016.09.22.23.48.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Sep 2016 23:48:06 -0700 (PDT)
Date: Thu, 22 Sep 2016 23:48:05 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Edit struct member
 type for endianness verification
Message-ID: <20160923064804.GA2338@d830.WORKGROUP>
References: <20160922032014.GA31033@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160922032014.GA31033@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 21, 2016 at 08:20:14PM -0700, Katie Dunne wrote:
> Fixes warnings found using sparse on
> drivers/staging/wlan-ng/p80211conv.c:
> warning: cast to restricted __le16
> warning: cast to restricted __be16
> 
> Updates the corresponding type in
> drivers/staging/wlan-ng/p80211conv.h

Hi Katie,

I ran sparse on p80211conv.c before the patch, and then again after
the patch and can see the sparse errors that the change cleans up.
My concern is with the ones it leaves undone and new ones added 
at line 452.

I'm guessing it's best to work this type of problem as a whole, rather
than addressing pieces of it.

I see Greg is maintainer, so look some more at those warnings and
wait and see what he says.

alisons


> 
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/wlan-ng/p80211conv.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211conv.h b/drivers/staging/wlan-ng/p80211conv.h
> index 8c10357..d8fda07 100644
> --- a/drivers/staging/wlan-ng/p80211conv.h
> +++ b/drivers/staging/wlan-ng/p80211conv.h
> @@ -130,7 +130,7 @@ struct p80211_metawep {
>  struct wlan_ethhdr {
>  	u8 daddr[ETH_ALEN];
>  	u8 saddr[ETH_ALEN];
> -	u16 type;
> +	__be16 type;
>  } __packed;
>  
>  /* local llc header type */
> @@ -143,7 +143,7 @@ struct wlan_llc {
>  /* local snap header type */
>  struct wlan_snap {
>  	u8 oui[WLAN_IEEE_OUI_LEN];
> -	u16 type;
> +	__le16 type;
>  } __packed;
>  
>  /* Circular include trick */
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922032014.GA31033%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.

