X-GM-THRID: 6470525432105009152
X-Received: by 10.98.158.139 with SMTP id f11mr359422pfk.3.1506560635359;
        Wed, 27 Sep 2017 18:03:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.247.202 with SMTP id v10ls852325plz.1.gmail; Wed, 27 Sep
 2017 18:03:54 -0700 (PDT)
X-Received: by 10.99.108.72 with SMTP id h69mr518989pgc.31.1506560634262;
        Wed, 27 Sep 2017 18:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506560634; cv=none;
        d=google.com; s=arc-20160816;
        b=Rf/2xgzDuBmxS06e22pI6OwhE6JCQyMnfY7DeryEcbGJP5A09A0WBWeDs/bSIA97xM
         gcp/EBBlsHa6YqXQUQW5KZrrFr+zjNKzLrNknAuttYgt8le0GwSDT+RKWPBtaetHTN0n
         yf7NAk3sATskL5dN2A+WJeg3VTVqTFN7zSHK/5+cUO6T42b72WrblU5lxfm1pS/GsBvi
         LhDb6Y0qN5W4Pp4gXDnmqyyqD+De0GvK2rga+jcw6ECvcHrJ1mmbEMMBh81yOcdE4f6Z
         LFANPQbDKckrUvHHDmlSp4j2DAegzg8G3H2LkurymmIRSk/379zs8tNAglHU+UniiDs+
         gTsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=IjchZRkSiITKYVBupqUeCoahLt8o+hKihnBg4gGVt6A=;
        b=A9rjXrWfONvmDvfOs8tGdn5fsSPkGtjGDNcTX7j2XUIkGecR9PnJynXd0SXZnseN2/
         +jK4aALHEp8HrOPwUgrp9OcYRfuLccn/py+Eskl/48kEM7AecpnbHl5hkcRQcGDGdvgO
         h7s32vfpVzHO1yuqqPHBPGFRdJGw55rSmHRetEDOv4/OFLaVny/zzUHiAP1p+NiQDCd7
         d1uXa9amjxWTUoaT2ne+/+d+oBM4oHwXqZG+7G7WrsWqVzIVACQ5ZqYcLM7oQuH22Nj5
         VFudsDSeKwhTvGXgh/cpFsby2eDxkKUnw5+QCdK/JkwEsDOmfOZEZhHB0wqSNXLLSJka
         TYLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWY170f1;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id v9si28267pfj.24.2017.09.27.18.03.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 18:03:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWY170f1;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id d8so21634pgt.3
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 18:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IjchZRkSiITKYVBupqUeCoahLt8o+hKihnBg4gGVt6A=;
        b=XWY170f1A/kqEJihF/pMPHuvXwaphnrTBmsWJS32mzyYMcay+iUqein9enLhWoM5Ki
         biU2S4tTJe8kzV7LLLAeKwlp98EPl1zAOilr7AJxb8IZPKI3+ZNOH9o99SvKC5zhzdjj
         dkXjr/Qkd6cTPAqS6rLW9IONXTbWzjcBtHMkyQbn6S4sErFPQKD/qHQgs97Zhsm0PUe/
         KhACowmM0xbPje0ZvSWhwoLTX4X63aCKxGuEY7K5ikd7PyDAGS/g2919CAkyvKJcEZ7Z
         Arb7/4lKdNnNqaqkkjBcKzRYJEKbnZlf/nL8RQr36yx+zI3kFO+7FIaVFpqeILkeISF0
         j7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IjchZRkSiITKYVBupqUeCoahLt8o+hKihnBg4gGVt6A=;
        b=OeUdAPkU2w5HbK27A6q+zBiKtlndkhvAx+ksBmQU8hVacetQkH0ereU5jA+28ZOGwM
         m6CcxLjNZnXpXhNr5RKOK7IiuqQJ9HrIdYT6+kd6K4lencDj81F5gBVJ0gYRn75OgXfp
         Plv5IS3ck4ivekAr/rYASgPxqKwmsmTqc876QjJljzAqOD791rlmhyTM3DrEpSwMKJW6
         ZNiUeUgjCm3BAvreWCvWdqNMBliTGNdzfm3HL/t8Yecuan+wvU4ZGvhVkHf5bRPVg4LR
         nOdQnWebPDLvBGl5gyseigxmtWDMOj+W8c0kWte6/OJT9DVmyZVNXQv5Gskk3+7TwH0v
         KJBQ==
X-Gm-Message-State: AHPjjUh/yjGjxglIJjV7Eh7qMuCvveE6y8lGyxR4fGcMj7WLrXjtMA81
	i3OxCiwR02gtO18TCM/UF60=
X-Google-Smtp-Source: AOwi7QDEYbBPyQbcvWfxCCWDJdh8OjQNZSkPYMCeUGOGU8SZ8Vsf9QBkT8b1lq5Cc1e+9xNwo8nkSA==
X-Received: by 10.99.127.27 with SMTP id a27mr2791816pgd.269.1506560633918;
        Wed, 27 Sep 2017 18:03:53 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id 76sm257061pfp.158.2017.09.27.18.03.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 18:03:53 -0700 (PDT)
Date: Wed, 27 Sep 2017 19:03:50 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Sean Paul <seanpaul@chromium.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] drm/rockchip: Rely on the default best_encoder() behavior
Message-ID: <20170928010350.GA8504@Haneen>
References: <20170927182317.GA8249@Haneen>
 <20170927200621.txav576zblby3i2z@art_vandelay>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170927200621.txav576zblby3i2z@art_vandelay>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 27, 2017 at 04:06:21PM -0400, Sean Paul wrote:
> On Wed, Sep 27, 2017 at 12:23:17PM -0600, Haneen Mohammed wrote:
> > Since the output has 1:1 relationship between connectors and encoders,
> > and the driver is relying on the atomic helpers, remove the custom
> > best_encoder() and let the core call drm_atomic_helper_best_encoder().
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Thanks for the patch, I've applied it to drm-misc-next.
> 
> I noticed a few instances of .best_encoder = drm_atomic_helper_best_encoder
> hanging around. Any interest in removing those as well?
> 
> Sean
> 
> 

sure, I will check them out.

Thank you,
Haneen

> > ---
> >  drivers/gpu/drm/rockchip/cdn-dp-core.c | 9 ---------
> >  1 file changed, 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > index a57da05..275844d 100644
> > --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> > @@ -287,14 +287,6 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
> >  	return ret;
> >  }
> >  
> > -static struct drm_encoder *
> > -cdn_dp_connector_best_encoder(struct drm_connector *connector)
> > -{
> > -	struct cdn_dp_device *dp = connector_to_dp(connector);
> > -
> > -	return &dp->encoder;
> > -}
> > -
> >  static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
> >  				       struct drm_display_mode *mode)
> >  {
> > @@ -346,7 +338,6 @@ static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
> >  
> >  static struct drm_connector_helper_funcs cdn_dp_connector_helper_funcs = {
> >  	.get_modes = cdn_dp_connector_get_modes,
> > -	.best_encoder = cdn_dp_connector_best_encoder,
> >  	.mode_valid = cdn_dp_connector_mode_valid,
> >  };
> >  
> > -- 
> > 2.7.4
> > 
> 
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS

