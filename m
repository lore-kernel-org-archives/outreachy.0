X-GM-THRID: 6614497774807285760
X-Received: by 2002:a25:330a:: with SMTP id z10-v6mr30940827ybz.100.1540320410357;
        Tue, 23 Oct 2018 11:46:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:f507:: with SMTP id a7-v6ls1683534ybe.7.gmail; Tue, 23
 Oct 2018 11:46:49 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62VH7vENYZLIvtmJBMcek/kuTTO1ylDqAVuNJmTtYuqFijL0QOtKV1Ni86AIh2Wz80kAIEk
X-Received: by 2002:a25:19c5:: with SMTP id 188-v6mr29529787ybz.76.1540320409541;
        Tue, 23 Oct 2018 11:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540320409; cv=none;
        d=google.com; s=arc-20160816;
        b=fJsl2zirvwgepSh1YVA+gRSzxXFZ1ZYlHFFNj6bAKCHp3qK2MyDjKrMhBAESQTilF3
         4QSA7fnVv75fVaG32ctH113wYR9+mAZRB4BIkhuc2e2RtH2lgETPKmCFh7d9rjCg41Ah
         gsb6h+v75dfW+sZKvzWN6RLXPKqWVmhBRhrvSSALxqpsilf6mbWutENSjvEf6Os3OYtu
         47gMEfxR8YueyEEvSIHSoOnaaIAZxFecsJNldppgj2BfosWKbBW7Y+RORQge7BjCf/uF
         rhaRFwHo4ZqVGeF3oFnSM8yU19Y8ijv4K48RQIPU+DBFCMf+EnnPNNDsTrCjBhl66eS5
         2QCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CN8cJvjavKFTPZzltWkT10qgLIHCBK3mWqnsJOJupJQ=;
        b=GsMMR+km5E7AyvFA2/+h5v2CUqKr3Rv18TTMe2z29ODc7OqZm3Mxmr+0ndtpxTe7+v
         bbZ549HKJQY2xGnijnZVGrO4RrKFWV9Q0Xp6ySZeteMO75hhsF++vPD2THgb+akPNn03
         npRUWtKsZx2XXNmOdxasjEhY3a7j46iDfsCaJoVJSc2fwxPz+xciCylCP+rmLM77XAWe
         M8OfhyVLNADhbKqievlbr60asCOK1NfC/sjZTuYe/FyGwM1ioKSoXY1D9/3J/MMADuqH
         3YDz7wbZFkdKMY6MCqWlo21xxpjANbVCF5Sh+7JkCYXbSPzSD/pkYd06EbidXQLzWMRs
         cCXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sAbXYimw;
       spf=pass (google.com: domain of robdclark@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <robdclark@gmail.com>
Received: from mail-it1-x130.google.com (mail-it1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id s132-v6si107449ywg.1.2018.10.23.11.46.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 11:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of robdclark@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sAbXYimw;
       spf=pass (google.com: domain of robdclark@gmail.com designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x130.google.com with SMTP id i191-v6so3438463iti.5
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 11:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CN8cJvjavKFTPZzltWkT10qgLIHCBK3mWqnsJOJupJQ=;
        b=sAbXYimwS75hW9KBenpYTGOhTomwcgMU2Ch1fJbngW2pRRkk5zJR2Z+PgjqokfnBm4
         dFOSOW+VUdpDQ4gEUztVv4R9ARzTKPdWgt/LtW4y+zsPGt5N8G7xUOLYYaBAQKo/bz2S
         JI7fmyGx5cnE5OkLaCJerSxypiCS4cc7enlvw6SkK0UuZRca1I3zDhBzZQlvnEnacz5a
         HwMuZUS1zCdQmFH9g/WpKiTR8dDwp0/eZTuTzQlWUeW3DVv0YWCbB9HE4Yq6Ph4LZnTk
         wnDw730otsrRILbOja6nuvZlvvLWV1isNP+B75iIxVBzFTzex3iOv8F7DcM8ZikOX3K5
         4Z9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CN8cJvjavKFTPZzltWkT10qgLIHCBK3mWqnsJOJupJQ=;
        b=j7vrW9c1bAcyAgcFqYawwhHbZoyTQxp4qUxARVve3gWRfuvPczuU/l67UcRSaiADYa
         1ZlR9KnIs0pxcpjQe/0cgPJjuATcDcLYGVaBlWAnIhoC4mRLx0quMyizcoDM6nkz0tsh
         Y+6v4OYveFc5N2QuGog6YhuXPOckEuanVfnn6YfFv2lWMBen22EHwZkh2hRIlISrppn/
         zgvdi2JXi7Oju7hczphuMp1HvvvaIGDU8cq7ygruMGO3hxWiiKDOWThLg62J24LxTiQn
         rSWvU9cHbhgbycPdj1p4h4mAvBssaknunWeGuqEKbnMCdELSZMT7WCr7dMIsNkZHDETu
         FYFg==
X-Gm-Message-State: ABuFfog6k10NfalW83DZhkuZ9Jm7yqx37ShH11z3b9YsoplDN8ghnTlk
	Hq5BQwptNPqXCPhGGK/6mV8WykJT/3rKyu4B9Io=
X-Received: by 2002:a24:9c86:: with SMTP id b128-v6mr14650703ite.104.1540320409173;
 Tue, 23 Oct 2018 11:46:49 -0700 (PDT)
MIME-Version: 1.0
References: <20181020174926.GA32333@armorer> <154023617749.9962.9645598871319141504@skylake-alporthouse-com>
 <20181023164122.GF154160@art_vandelay>
In-Reply-To: <20181023164122.GF154160@art_vandelay>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 23 Oct 2018 14:46:37 -0400
Message-ID: <CAF6AEGv0nk1sfOENm_uQuxvRd6N3tCHmB-K5AMdKJ+grv1+O7g@mail.gmail.com>
Subject: Re: [PATCH DRM] drm: msm: Use DRM_DEV_* instead of dev_*
To: sean@poorly.run
Cc: Chris Wilson <chris@chris-wilson.co.uk>, David Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel <dri-devel@lists.freedesktop.org>, 
	outreachy-kernel@googlegroups.com, mamtashukla555@gmail.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 23, 2018 at 12:41 PM Sean Paul <sean@poorly.run> wrote:
>
> On Mon, Oct 22, 2018 at 08:22:57PM +0100, Chris Wilson wrote:
> > Quoting Mamta Shukla (2018-10-20 18:49:26)
> > > Use DRM_DEV_INFO/ERROR/WARN instead of dev_info/err/debug to generate
> > > drm-formatted specific log messages so that it will be easy to
> > > differentiate in case of multiple instances of driver.
> >
> > Do you not think this is a bit backwards? Both dev_* and DRM_DEV_*
> > include the device id so that multiple instances can be distinguished.
> > What DRM_DEV_* adds is the function name, which for user facing messages
> > should not be required given a self-encapsulating informative message.
>
> "given a self-encapsulating informative message." being the key here. I'm not
> sure about i915, but most other drivers have vague/duplicated log messages which
> rely on the function name for differentiation.
>

agreed about it being nice to have the fxn name in the message.. even
if it doesn't mean anything to the user, it often means something to
the person they send an kernel log to..

Thanks Matma, I've pulled this into msm-next

BR,
-R

