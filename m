X-GM-THRID: 6755177272483774464
X-Received: by 2002:adf:d18b:: with SMTP id v11mr21570611wrc.308.1572819854495;
        Sun, 03 Nov 2019 14:24:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1b0b:: with SMTP id b11ls14667668wmb.3.gmail; Sun, 03
 Nov 2019 14:24:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqy+qWG0creYFaRJjd2LJmNVWPgWlWktLgZcMGMFvUTLHW8N8i/LW52Q8oOX5QUzAarZGVBT
X-Received: by 2002:a1c:9e58:: with SMTP id h85mr12910209wme.77.1572819853491;
        Sun, 03 Nov 2019 14:24:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572819853; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbwitwBanCkHUoPpltJfnBg21uicY5kppyiFJKA0rlIzcpllD7h+envIVy+QBASmQA
         xwssACgylDtLcyTByG9OCyyiuGwwpYksxiImDQSeDfM35jJ4uuYsDVh3C6hIfUIxOXgx
         x95/zXKkWR7MOT1Plp+lR/yzV+N4Q3bhx2giqV6Co+VHAGZjs7XsohtIrmbwSG5rSIdV
         4Co43WKZmSTITf/pjlBffv771c8qqyinvodR3eHhFkqrao+7d+W1fZRtvo2dOEfbCigi
         +yz1X0M0xmVE+yhMGXFg06Jcl/puSxae6IZJI1MBFHmMndgRnL68wMRF/Yp6HpFHS8sw
         dXsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:dkim-signature;
        bh=AhmXoZlSFkql/U/pQyz6aztlFzO6hkgRehqvhl1KDJ4=;
        b=X76tBGG6drRuLqoDQlE2KgZeRXmKOVIYaKJ7y2Ry85qk2oBz/hsGCQllDn/BjkI2Tr
         nSi/XyhJmWMCApxIyGS3tWIRV9sWEBw196F4OxjSWoSZ6GHF7PSmV8mK96qVpsS9mhry
         JQyGO606hD9bVPKJ9j8DmQEM/ZGumfMKwZVRjvFUMVYFow+sB43oTqmg/tC6V48sgC+M
         KtqXQITJf7MJKbybA6GqdBf39wAamFUNZVgdnXaoYC1mjkCmvbxFoCneS2FDl5Wopw1O
         JplIgf6kEy+Fw9Qnap2zY9XwH3/YxV2My3H5M8BfW+zOr7mxl8vYAztOLbjnbUQCcIDF
         W2Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khlhdGa4;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q3si859642wrp.5.2019.11.03.14.24.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 14:24:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=khlhdGa4;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id p4so14939388wrm.8
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 14:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=AhmXoZlSFkql/U/pQyz6aztlFzO6hkgRehqvhl1KDJ4=;
        b=khlhdGa4YCBDfdkjZ0ZdkXSBeF9NFUuB/wjTIDoCnbEAWx0vGFvAW3hDX2MtMD/H4Q
         GP0G7J7PRRxBkTYJZDsl/o6Ls1Xl7qPp7rNdXwfHVNYYKwR17iN6F5EnGtQE2Bpzs075
         JPZh2QIcOgauoHKeIPvMzAZlZFc6vHMhVvVi//eSiIcXGr2F7PziuMD8Rqg5qPk29ljg
         Bio7+nl3bpVaD9LT8RI7kVs+ulugiSDvCMBKC+Hz9CYki8G7uDn7LB1bZdfaWYCI9GR+
         RELtnWvjtyDENqK5eWnT0o3YlLwDU3Y9iWznf3AJ4jOowq3v9RGH9RsK00Abvzj2056s
         oAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=AhmXoZlSFkql/U/pQyz6aztlFzO6hkgRehqvhl1KDJ4=;
        b=DMvF9Jr2ayo1cVcjjvcURiqySzZ7t0Nha8wvoHbvCkdponOQsM45jDqnG3bdU0uGHP
         rh2CGKTVjdkt4RY+KZ+BnYFfd7r6XREfVmXSF3hhkQ8rjvS5qEBlkKzPj9tx3BygJJHk
         dncaxhuP0ukmp06DbItnEimdq1/j8g7ujlJUntFrs26MA0ctfEfZ+5gwDtAECP5t6S3f
         tdQMDBH5RnJrr8FvvYkPBSj3MYxQX0d4Jgi8xLxSWnec7EDI4gHguXjT5CiC14g9tw6n
         a/otvgZJnYzrweK0FOpnTvxVKRPHef8OvAOxQaYhYZTJA36/39wdp/jxjtsJBAcponev
         zdow==
X-Gm-Message-State: APjAAAXGzRPYSxxrZxh0bVCcvE8DXMlf+n2qm7b6q1nGTaNq8KRPayfT
	wcLyLCK1sjiqv1V2nmrC3A==
X-Received: by 2002:adf:c105:: with SMTP id r5mr20592700wre.125.1572819852944;
        Sun, 03 Nov 2019 14:24:12 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.gmail.com with ESMTPSA id b4sm26559490wrh.87.2019.11.03.14.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 14:24:12 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sun, 3 Nov 2019 22:23:53 +0000 (GMT)
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, abbotti@mev.co.uk, 
    hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: rewrite macro function
 with GNU extension
In-Reply-To: <alpine.DEB.2.21.1911032119140.2557@hadrien>
Message-ID: <alpine.LFD.2.21.1911032222230.8366@ninjahub.org>
References: <20191103201740.25415-1-jbi.octave@gmail.com> <alpine.DEB.2.21.1911032119140.2557@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Nov 2019, Julia Lawall wrote:

> 
> 
> On Sun, 3 Nov 2019, Jules Irenge wrote:
> 
> > Rewrite macro function with GNU extension
> > to remove a possible side-effects of MACRO argument reuse "x".
> > Issue detected by checkpatch tool
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi.h | 6 ++++--
> >  drivers/staging/wfx/queue.c     | 2 +-
> >  2 files changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> > index 09a940066c0e..d8a8eec82930 100644
> > --- a/drivers/staging/comedi/comedi.h
> > +++ b/drivers/staging/comedi/comedi.h
> > @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
> >
> >  /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
> >
> > -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
> > -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> > +#define NI_USUAL_PFI_SELECT(x)		\
> > +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> > +#define NI_USUAL_RTSI_SELECT(x)		\
> > +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
> 
> It seems like a clever idea, but could these be functions?  The only
> problem could be if the arguments have different types a the different
> uses.  If that is the case, it would be good to mention that in the log
> message.
> 
> >
> >  /*
> >   * mode bits for NI general-purpose counters, set with
> > diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> > index ef3ee55cf621..5d29bce65f71 100644
> > --- a/drivers/staging/wfx/queue.c
> > +++ b/drivers/staging/wfx/queue.c
> > @@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
> >  		}
> >
> >  		if (ret)
> > -			return 0;
> > +			return NULL;
> 
> This seems to be left over from some other change.
> 
> julia
> 
> >
> >  		queue_num = queue - wdev->tx_queue;
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191103201740.25415-1-jbi.octave%40gmail.com.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911032119140.2557%40hadrien.
> 
Thanks for the feedback. I think it is best I move on to another driver. 
Kind regards
Jules

