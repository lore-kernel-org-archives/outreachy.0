X-GM-THRID: 6949336667395194880
X-Received: by 2002:aa7:850c:0:b029:24c:b470:cc79 with SMTP id v12-20020aa7850c0000b029024cb470cc79mr9411822pfn.69.1618311640969;
        Tue, 13 Apr 2021 04:00:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls9424963plx.1.gmail; Tue, 13
 Apr 2021 04:00:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPdOsrlfBBxSZeLy3sctgcCYzS0kmCwJ0uokPXRQF/riuLuwrAHO8XsdsTBNfMHpmOsNXP
X-Received: by 2002:a17:90b:3656:: with SMTP id nh22mr3955969pjb.112.1618311639072;
        Tue, 13 Apr 2021 04:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618311639; cv=none;
        d=google.com; s=arc-20160816;
        b=hz+k3uaF46o3xoG6eNAOpTqEEZyTP/8UOLz8yDZSJxvwEgnSAY8k/CxnBiKDB/HFP2
         /LhauMtZVIQ58sqhq/5xYY6JWgxEBAZN/xX+LRQe33OJbdb8UbV6P8v2Hn4XPRLOzmeO
         QXW6e77T0ToupPvf6UtNmkQWori17I+TeZ5cbeLkIDh95cBc9YJngMRoilFJBFDBTJfv
         SV7oZr4Lam7TlTFG4TYyyjYUNvDsTohEQ9XwqTHQfRCO1+s18FSsg58I3c8XUaWdbIbb
         gIc0WtdfYciYOk2DvWuDP8zNh4+0rygK+kQG5ThLnnDx1Ppbdwu3ja95XEFhiVcJSiij
         M48Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=A2IPqO8My7+g2aQ2CPPds+GGz3tnCFkMYnx9rkmowbs=;
        b=wfYDWy7G6G044lrddqdyTgMihLVf97JW1alNkpPUyYmPvlcyZctXnUeM7QvxKy3U54
         /dOYk1oay9AQWNHRjaKK9SoJzhzURxaZ7/gJqoqKn8TaVTfQb0Q9BK4tkcLORnX7F7dm
         zmWUD3RoSS6/GrOGSlkdldpEB7lb+dnk1i7cUHrnyHIZxcC67c5jODGp/wVHYtWM3ESz
         pavt/3SNnDKGuamTgUflKFgK+o9TfPuQS+IYOVN/9BeLlrzAz++a5piS2oPSck24UwBS
         MZ17SMH9N2mTiZ1PYEzlbFVYVI9iKTGPuyO1McBGHAM3yq9RB4MsMDXHFw3KFa+IvBUr
         A5gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IWXJy/3e";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id r141si952416pgr.5.2021.04.13.04.00.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 04:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IWXJy/3e";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id h20so8014503plr.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 04:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=A2IPqO8My7+g2aQ2CPPds+GGz3tnCFkMYnx9rkmowbs=;
        b=IWXJy/3eCQ9wrYX4wDMDoBSXlvDioLUOwRwW7HXRuN1ud3h8dWb/emC2b40W9OXO3U
         OtZHUHJKchtl7d9x69X8CUtmtTNXIODznLcANtFZ9je3MAUKDZUecBxinXaYZ+HZZNK7
         PfOAcujMoMmuE4XK6v25mTbLBRgVmA/1xX50I62zyJzg08e3v6msgnCpzggX3slIdxA+
         P4YUrtCwlke6iGZonP+5QT61/P/4yzResTBBqY+y60b56y5jl+KP5E6h+jKjl84xIk3W
         fzAmRKwROABGsyR82AGOUKYengiTQSs4uChnIEasfpijnjhHI7P8u8OtYNtJkYNMI1eU
         pgqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=A2IPqO8My7+g2aQ2CPPds+GGz3tnCFkMYnx9rkmowbs=;
        b=pNnA1/ZZ5petA00WMW4v3xbHF56vNL6shXnCnqNQtIcW7Ux9ZDkaS92Z+mBugcQdPt
         ngy9fTbg/9lh7cvgC311Ak9tUj0a4ds7++ngayf6h/i/1ZhaMMtC16bGOxE7QN0lnkhL
         iQLYrhLq4JJYPg3UOoPRclinOqO8tm/RThHz/1cxGDzvricNvczTr0L1yGlWYXElyIEP
         uh2Ve2AVAAOkr1+R9crI+ji86UH/yonO0F7p71RDtd7uxd4UFQRpNfJenl12SQnySDw4
         9TJeRj+nriip1Gdm1ffDXXfzkpomDqVE3aVoiU8hcEFwXQNdXElo4h069h9CSRr3s01R
         e6ng==
X-Gm-Message-State: AOAM530mMcOs9en2gbGxNaIeADiEgRKNLF4WLfn46hSfQ3HIhOOn1Vhg
	VgexrKUHXyT2WCUZn50yQYg=
X-Received: by 2002:a17:902:b40e:b029:e6:837f:711 with SMTP id x14-20020a170902b40eb02900e6837f0711mr31093234plr.2.1618311638686;
        Tue, 13 Apr 2021 04:00:38 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id e1sm14299002pgl.25.2021.04.13.04.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 04:00:38 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:30:30 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 4/6] staging: rtl8192e: matched alignment with open
 parenthesis
Message-ID: <YHV5zikK8CUheULV@kali>
References: <YHEA2Te3Hik5J39t@kali>
 <f5fe04d62b22eb5e09c299e769d9b9d8917f119c.camel@perches.com>
 <YHEMrQdEFpXgmMh/@kali>
 <04fcc5ac37f750e335447aee57da5aad072e321d.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <04fcc5ac37f750e335447aee57da5aad072e321d.camel@perches.com>

On Fri, Apr 09, 2021 at 07:31:53PM -0700, Joe Perches wrote:
> On Sat, 2021-04-10 at 07:55 +0530, Mitali Borkar wrote:
> > On Fri, Apr 09, 2021 at 07:07:09PM -0700, Joe Perches wrote:
> > > On Sat, 2021-04-10 at 07:05 +0530, Mitali Borkar wrote:
> > > > Matched the alignment with open parenthesis to meet linux kernel coding
> > > > style.
> > > > Reported by checkpatch.
> > > []
> > > > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > > []
> > > > @@ -154,7 +154,7 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
> > > > �	    (net->ralink_cap_exist))
> > > > �		retValue = true;
> > > > �	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> > > > -		!memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > > > +		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > > > �		!memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
> > > > �		(net->broadcom_cap_exist))
> > > 
> > > checkpatch is a stupid script.
> > > Look further at the code not just at what checkpatch reports.
> > > Align all the contination lines, not just the first one.
> > > 
> > Sir, I have aligned them in last patch of this patchset.
> 
> This sort of change should not require an additional patch.
>
So now should I compile this as a patchset of 5, removing the last patch
of alignment?
> 

