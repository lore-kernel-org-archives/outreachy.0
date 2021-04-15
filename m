X-GM-THRID: 6950903323792769024
X-Received: by 2002:a17:90a:d681:: with SMTP id x1mr4191200pju.82.1618495496561;
        Thu, 15 Apr 2021 07:04:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls3275599plo.5.gmail; Thu, 15
 Apr 2021 07:04:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2ZZqc1coPeS1g2KNsPOiok+gxYQ4VuVlS3rNvpvON+5pO8+KAdzMU9aC0v7SYT7pMN/pm
X-Received: by 2002:a17:902:b602:b029:e6:cabb:10b9 with SMTP id b2-20020a170902b602b02900e6cabb10b9mr3995183pls.47.1618495445491;
        Thu, 15 Apr 2021 07:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618495445; cv=none;
        d=google.com; s=arc-20160816;
        b=kx/1y+/G3lLRPW505vOliRPRvM7KeV83zDxroMMZyrIyxHD9E/94z+TTuSJKjzOhad
         tW6X7Io74VfZaa05eQ4M03Qfj0xzuz/xvYF+nB+o/bObo6Bmoq52IJW5DhdTz0nwpz/H
         W+EzLIlLwXGoLZ5sWr+ZDMUwQm0mja9HGcWEat90i+OSRmPYBY0KHsD9j2alJZ5vRt7K
         Uuxm6yA5HBDuly9pT2swkMVzJ6+gK3FTLaszQUUeQ8oDANRktTSNFfpNxhAaQR9QM988
         xRR2ASBq3bnuZ2BB+Vecv1XoImb7fOJrZQoIhsi9lzD6Z1qOXpBLvkcIqFezEEcwOlo0
         ekDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5XPT6W5he0UfMYjZNPGLkFire9o8RBMsN2S/bCzx5Ng=;
        b=UA4yKBpd96Rd5vyf+ENDwUFqqeeLoxzbaxUnQ0FkRS+SBJARcuYb3kYcgz4usH7lTW
         qvZ2HYtRL99xNHCv090XQKhxkZj8yy3tObiQKz3yj8vHaGp93chXcIv2Yxvh+pbx+fvR
         jkRwcrm4p4BGDGtu9h+1Jj8y0m9bZ+ewEcx+x0gxrwtNpg1lGC937X9R09jUW0j308wn
         PyVu8GALMqUL1i7y2afQqV08bV6/jXzOM4lZb++FyCWrM928iVzQtLCiY+2yuSrGpIh2
         I8l2QZp1gGkkyPem9SC6m/ifns/LnJhvyj7u9WzyXZ42e4D8xmT28Md8WJ7zNEgXQv8R
         1ysA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cleochVx;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id mz7si1110080pjb.0.2021.04.15.07.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 07:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cleochVx;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id 31so1518539pgn.13
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 07:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5XPT6W5he0UfMYjZNPGLkFire9o8RBMsN2S/bCzx5Ng=;
        b=cleochVxryEm6n+xPLdbi6rWCiJMx6jse9wDAZ2S6KURoNsWa8shkEYnqJ3kerW42j
         aEoddADtBA7Je9fqWlaPShWFbBRSsrqjiFJlKDF1d95merOtepfBt0qOsNOw/vsfS5nL
         tu+zjwAb4PDxVVsaJHws0sN7ld6LlZna6zZlwi3a/wwPIzmb22qvQIBBZKDUv5hhbZqB
         hnNDSD+Wfd0Ps9LdLRQx30WNR/orJZjOCiDSB8EI8TvwtgE69qaWXUiKCJ9R/+O3XSYH
         hbEZo9IJAzM7u9euVsmHGqSqZfPUS9MGhxZqOwNBnq8LDgTrRP3+lD6I8CqpAIOTRW0f
         3tdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5XPT6W5he0UfMYjZNPGLkFire9o8RBMsN2S/bCzx5Ng=;
        b=FFMlZQZgI9Ic7DEDCBkZ6aaGTtKfpQNS5PInSDMV7CamsI2K12TDlF6NF1xgrZ69xC
         IzIUV+M5N6hnqo7YUTYicpk+69FZp/R+N/oRu+39mnm+dzPeufXFWcw8VFtxGoDmshWk
         5kJ6qmd+XNlYM+GH9GHe7Lbi+GS7wvpOhMtivLNtRqHkJoD219XyqW4bqmj1YgBCnH/L
         6QHrXLNUzA1jn7SLBr2sfDouojhnuFjBB8RURojCvsAS1xvdYrESBRloylnaCUFsFQCU
         nprr+Q4dls2acY9CHJZrG/UnV/Hugp8FLcZaXEU9IYbp1ULlIOjkf7QSmYPZ0LmDUtb4
         qBJw==
X-Gm-Message-State: AOAM532QoLhrTgUv4ALD3wwYOX2K/BqnvhOvNQkj8osx1BkwjgpzawGM
	MxmwsGNXIvjvINnNre+qBZQ=
X-Received: by 2002:a62:52c7:0:b029:255:e78e:5069 with SMTP id g190-20020a6252c70000b0290255e78e5069mr3227022pfb.45.1618495444989;
        Thu, 15 Apr 2021 07:04:04 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id y187sm2330633pfb.109.2021.04.15.07.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 07:04:04 -0700 (PDT)
Date: Thu, 15 Apr 2021 19:33:56 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: gregkh@linuxfoundation.org, davem@davemloft.net, kuba@kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 4/5] staging: rtl8192e: rectified spelling mistake and
 replace memcmp with ether_oui_equal
Message-ID: <YHhHzF6A2Syfbxpi@kali>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
 <eda8d3401f2f7ff7a61137b4935c6ccb09112e52.1618380932.git.mitaliborkar810@gmail.com>
 <20210414075525.GR6021@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414075525.GR6021@kadam>

On Wed, Apr 14, 2021 at 10:55:25AM +0300, Dan Carpenter wrote:
> On Wed, Apr 14, 2021 at 12:26:01PM +0530, Mitali Borkar wrote:
> > Added a generic function of static inline bool in
> > include/linux/etherdevice.h to replace memcmp with
> > ether_oui_equal throughout the execution.
> > Corrected the misspelled words in this file.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  
> > Changes from v1:- Rectified spelling mistake and replaced memcmp with
> > ether_oui_equal.
> > 
> >  drivers/staging/rtl8192e/rtl819x_HTProc.c | 48 +++++++++++------------
> >  include/linux/etherdevice.h               |  5 +++
>    ^^^^^^^^^^^^^^^^^^^^^^^^^^^
> This is networking code and not staging code, but the netdev mailing
> list isn't CC'd.
>
I didn't knew mail id then, I will look into this,

> >  2 files changed, 29 insertions(+), 24 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > index ec6b46166e84..ce58feb2af9a 100644
> > --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > @@ -43,7 +43,7 @@ u16 MCS_DATA_RATE[2][2][77] = {
> >  	 810, 720, 810, 900, 900, 990} }
> >  };
> >  
> > -static u8 UNKNOWN_BORADCOM[3] = {0x00, 0x14, 0xbf};
> > +static u8 UNKNOWN_BROADCOM[3] = {0x00, 0x14, 0xbf};
> 
> Please pull this spelling fix into its own patch.
> 
Okay Sir.

> [ snip ]
> 
> > diff --git a/include/linux/etherdevice.h b/include/linux/etherdevice.h
> > index 2e5debc0373c..6a1a63168319 100644
> > --- a/include/linux/etherdevice.h
> > +++ b/include/linux/etherdevice.h
> > @@ -87,6 +87,11 @@ static inline bool is_link_local_ether_addr(const u8 *addr)
> >  #endif
> >  }
> >  
> > +static inline bool ether_oui_equal(const u8 *addr, const u8 *oui)
> > +{
> > +return addr[0] == oui[0] && addr[1] == oui[1] && addr[2] == oui[2];
> > +}
> 
> The indenting is messed up on this.
>
OKay Sir, I am looking into this.

> regards,
> dan carpenter
> 

