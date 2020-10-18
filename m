X-GM-THRID: 6883926801253400576
X-Received: by 2002:a05:6830:148b:: with SMTP id s11mr9313476otq.214.1603050703124;
        Sun, 18 Oct 2020 12:51:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls1793980otq.9.gmail; Sun,
 18 Oct 2020 12:51:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxURm7JHIyMsxwdsMUsdy1wjpP1zAFQodccRuluk9puz3iONMH9aSFVjiobkqKJPbIHV0vV
X-Received: by 2002:a9d:2273:: with SMTP id o106mr6084707ota.65.1603050702055;
        Sun, 18 Oct 2020 12:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603050702; cv=none;
        d=google.com; s=arc-20160816;
        b=ix/Kv3ptEJ5xXSJvUmpzo8Zzj0J+AsBFDRcRLolWtc7loWAh4h0Mtk8Wu0998vHz7K
         TodtwNvXnknQTBkukCIea6bmuYTCbqbSdTc9jiH8Qn4zTsrZxGNUwda/Y/vLWihlq8qW
         sKb2vGVdV3v+GzpPKEqQZVSd809RTXMdnATZahB1XMK2qF6kjpoutKbMjQnSfyN0andG
         EgI46KC97SWAH168ZMOkuPfNMerVpK0tdTSWGMe1rhcxfzfcJHxDQwnIhhRS0wSxS5/N
         zmw160J92pwlXstnkp/HN3qKco1SYXoT0/BwOAAV3B8hxd+wbideiRbBEZJV+Jf/H977
         imtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3UWcWSQ8GWb7MwyHiFfm0fHyMkMEI19j57kzE3QF6RA=;
        b=lHXzjKAtz4Ow3sf5cB3jm2vnDMOlqkRDoMGfrkQn2MEfisiJzlcDmk7Gi1Dq4qdPxM
         DlAAm3FDudfkcOQWF+awRG0hduMnEvRh0qqfemll7Gy4spARL8jDWHGYAa3EMJnb8x08
         YA/JYVNDV5tpZGOX8IG0aPUwF+4hTphMhOE5I8buimBO+M6j4zX3KsOChGAqwt3bGjEo
         JJLPbnxjMTdO+lVITMGeG0AKpK3hxN7hMp9UvfCLWIyQFzXzX5Xg70HPYm4tJKx33g0l
         e7SqmO8TTlPbNPKFl2iBJmI4P+qFSrLLr2qJJysoAoIL5IzscVFNdNo8W11EgQkinJ0T
         34Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gq4nhqQ2;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id p17si611933oot.0.2020.10.18.12.51.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 12:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gq4nhqQ2;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id h4so4388164pjk.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 12:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3UWcWSQ8GWb7MwyHiFfm0fHyMkMEI19j57kzE3QF6RA=;
        b=gq4nhqQ2/TBPnyg2vCTzVM+dRXtE6tgdH/zLu86SsMtq/BImDtnGNuaqROkvP8C3sl
         yd0JrXKTwQ1I0GZ71qDvIvrK9osmR2bN/9al9A5NfMYdH2s4DkJzn/P8kyK/VIybgD+z
         KjvEJVDD5PZzvBpjg7lvhq6O7n2fQnIfV7POP8Z8/tJ2W/vmvCxNBkE/rrS6dHazGCJA
         ZhDiz7KmwRXB7Z73vKAKoR5ClLD35T5u2AhFSxhWvxJi1C9F+UeGltGMnBdis3RhmenB
         8naaHLnjFRxizYBDFbyL670Ekz8yolCrKDznI5bP++X0fv8Q7YNHB6RHyelLdpyLn8/w
         eIxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3UWcWSQ8GWb7MwyHiFfm0fHyMkMEI19j57kzE3QF6RA=;
        b=g8ms7vN0Jz7LZU9LjB0b0zKXQasOI3CyNbdaXwYDFst9efTKTIXgv6WxBPr9mZ1CzJ
         GwvglKjQQz8l/pusmP7NeVxVllJMxaQ9gLH1szrm3N3AxDpIJ98DTzn1o4RBA2Mb4bix
         qGO1eLCd1s/+fLi0PZ6zDsbYJrvFyzvTUly4mfvXOq2iL9VGgiLaRh5gDKKTaLcjTL3Q
         xS4RhXrURMJX99Q64QExYnMdMyLOecFUppF/dP23upA4XPSNFQVAmPYptFvDfnqoSlJS
         BdLA7nbRlJgK1+G7ioiOMO3HE2Wlx/4ENafQ+odRVregdYFFyt3c8xVroKvwgAgYPrP5
         vevA==
X-Gm-Message-State: AOAM533QDCUN5HNGzS/oXy0VqCBZNb+u2ILsIn7quObLzjDUMcCetDlP
	xJuBEdZDFvpL6YnumS+3wto=
X-Received: by 2002:a17:902:c408:b029:d4:c99a:19e8 with SMTP id k8-20020a170902c408b02900d4c99a19e8mr14225742plk.8.1603050701487;
        Sun, 18 Oct 2020 12:51:41 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id z30sm9897138pfq.87.2020.10.18.12.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:51:41 -0700 (PDT)
Date: Mon, 19 Oct 2020 01:21:36 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] Re: [Outreachy][PATCH 3/3] staging: comedi:
 Replace snprintf() with scnprintf()
Message-ID: <20201018195136.GA73063@ubuntu204>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <233169195737b5f3afd429d8b6572f3b531168cb.1602767114.git.sylphrenadin@gmail.com>
 <825f5868-49f4-509d-638d-5fcab59c8f1a@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <825f5868-49f4-509d-638d-5fcab59c8f1a@mev.co.uk>

On Fri, Oct 16, 2020 at 10:14:46AM +0100, Ian Abbott wrote:
> On 15/10/2020 20:18, Sumera Priyadarsini wrote:
> > The show() methods should return the number of bytes printed into the
> > buffer which is the return value of scnprintf(). snprintf() returns the
> > potential number of bytes that could be written which may be greater
> > than the actual length to be written.
> > 
> > Replace snprintf() with the safer scnprintf() in comedi_fops.c.
> > 
> > Issue found with Coccinelle.
> > 
> > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> 
> The patch is fine, but there are a couple of problems.
> 
> 1) Patches for "staging" should be Cc'ed to devel@driverdev.osuosl.org .

Hi Ian,
Does this apply to ALL drivers under "staging" or only the comedi series 
drivers?

Thank you,
Deepak.

> 
> 2) It appears to be part of a patch series, but I have no clue about the
> other patches in the series because I haven't seen them.  The patch doesn't
> look like it depends on any other patches in a series, so it should be a
> standalone patch, not part of a series.
> 
> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/825f5868-49f4-509d-638d-5fcab59c8f1a%40mev.co.uk.

