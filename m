X-GM-THRID: 6674971503318007808
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr1403932wme.5.1554147574611;
        Mon, 01 Apr 2019 12:39:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dd4f:: with SMTP id u15ls1044348wrm.9.gmail; Mon, 01 Apr
 2019 12:39:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZsZLo6zLDtZlDvUNGKRS3TZlLZ1xM3GECTtb2RpGyMwRrY7IOuLSr98SbrGdwFXwDfIPD
X-Received: by 2002:adf:f487:: with SMTP id l7mr1854291wro.6.1554147573490;
        Mon, 01 Apr 2019 12:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554147573; cv=none;
        d=google.com; s=arc-20160816;
        b=AcBBfqAjzLuHetNZyZLWhB0cKAeZUZfmzkfG/jjKMkbosbdnv+QlO3y7eHyvQOlXd+
         dxkHmJ54EMEytFSns6TJkypR8aOws0G56tIltO0z++G6mDdObrFhLdxD2/W3ELP3dsWT
         /JT7cOjVxNqAj/Ah0ONhZtN80TjU6cSMyRSe2SQTFKY7u1Pk5kigcZPLKUZ1sif4ausx
         ZR0gQwutrZDfuXLvvJEEouB+z0t9rgiu8zvkddNMxLgPLf0zBobDRbwDwyUAnTnXmUlL
         GeWZChf413zCYBTnNWrPyQB5H9iExXXkrAOo13+UJb2g4W+YUjVoQ3zQcdTO5olfcnl3
         QZkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PwkS2OrbZWkscssZlX4rRI/EeHVhKHTDppT3piZENgE=;
        b=inzrvoPjY21OWagZwuKUJdKtJ1dnPm0y0Aq8qFD8ruaK5GHzawEXKEhhdqKh8D5/sR
         0gBqyGYHExhMwP9NCX4NDAOtKS9RMsqr5tqnHuO1DDMNJh6xxF0N/L55SH7WwNMqDsH4
         NY9F1blbq0hh1RFSZbRYwohZ3SVgFIWZInCsrwGSv+sgKr1pUn+vx8XYNjW3z1wen6E7
         K3X06/Ajb9se0IZL523dNaJx+V3DhAvI1+Rb6kcuxkovdQOVBMbUgLplgDueXrxOXkp7
         vv3e9oHmpnYC5doI0zJRSn1Wk+lAXtGAGw3cb9Zs8+UnymrArYvZjo9j3TUQgrOEdev+
         pnkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d14si238752wrj.3.2019.04.01.12.39.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:39:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,297,1549926000"; 
   d="scan'208";a="301440892"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2019 21:39:32 +0200
Date: Mon, 1 Apr 2019 21:39:32 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Use list_entry in
 ieee80211_wx_sync_scan_wq()
In-Reply-To: <20190401165827.18731-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1904012138510.2530@hadrien>
References: <20190401165827.18731-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 1 Apr 2019, Madhumitha Prabakaran wrote:

> Use list_entry() instead of container_of() in function,
> ieee80211_wx_sync_scan_wq(), as the function to return the
> parent structure containing any list_head is defined to use
> list_entry() as per the definition in include/linux/list.h#L348.

list_entry is for lists.  The wx_sync_scan_wq field has type work_struct.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> index 81020fbcdc20..76daec98212e 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> @@ -300,7 +300,9 @@ EXPORT_SYMBOL(ieee80211_wx_set_mode);
>
>  void ieee80211_wx_sync_scan_wq(struct work_struct *work)
>  {
> -	struct ieee80211_device *ieee = container_of(work, struct ieee80211_device, wx_sync_scan_wq);
> +	struct ieee80211_device *ieee = list_entry(work,
> +						   struct ieee80211_device,
> +						   wx_sync_scan_wq);
>  	short chan;
>  	enum ht_extension_chan_offset chan_offset = 0;
>  	enum ht_channel_width bandwidth = 0;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401165827.18731-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

