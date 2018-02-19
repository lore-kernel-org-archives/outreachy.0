X-GM-THRID: 6524333003381932032
X-Received: by 10.80.189.195 with SMTP id z3mr4582549edh.8.1519068662933;
        Mon, 19 Feb 2018 11:31:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.169.98 with SMTP id m31ls4510918edc.0.gmail; Mon, 19 Feb
 2018 11:31:01 -0800 (PST)
X-Google-Smtp-Source: AH8x225L6VlW7qksLYjUfj0pSXZwJ12ptYwZpLweuyirfTpWTEC1qtst5l68LQpWDRlLx00qN33N
X-Received: by 10.80.230.18 with SMTP id y18mr4581906edm.2.1519068661140;
        Mon, 19 Feb 2018 11:31:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519068661; cv=none;
        d=google.com; s=arc-20160816;
        b=LL/Xm0n0CEqyy/kDtU2824Czh1cO1gi6k+CLrrqzdqBCawc9iENp9m1SJ5kNp1mx2P
         OhDTksuTTWcdU9EMrjeH6Rep6aX/2TwqVFRho7A4D798TyZ/Kz6z+aTT1RUMVP64JtVr
         taS3tceQXDUsmBpNXuiD9bH3MmnsoYT6eNvmHGnxk9wI0SoBMTcEzckJW6k1RXZjMOm6
         ovacVxCIX3dtMXojbKOQo1QpUkwNUd3YFPyXjbDx084EoSnSqXxWyXria47GX7MwgcZx
         dDP8lrqbSJeuS0o5IHVlMi3W+er/oI9TIIC5PzWT96QjXXWg/dl6nnZSNOiL/vBdpPm4
         TV0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=PVVAbPJ2dkvWpnbVi0EjptqESg26iVXERvs/2If6DWU=;
        b=oHlIbs2GxMefHNe7HN7uAYJi2FL4RvGLQW1Ps0QKTcrsmbktFocClHQ7oCioOJRIcN
         yaBWURSqawavhNNSbsZj9kp1wvUa0tIS2RrOR0CZHHG0SaWPeeTbxoiSmc9+XXaQKByi
         ecFCrWJmsVZ2AXkaBrVEpJEViwdRCV7JGZXYq/YYraUWsJOt2lor3vrW3il/M5UIwCvV
         4YZF0kZtiNpYcjwqie9ysd0/pQn3zGxCOj2HyPekmtITODtf/ezdmliRGJAyId2ZWwhD
         CkVIUWb81GbhCYGjGN545rxEBz73/ZrIvvYA41c1IrlArVW73EPyACauIaEx5Z0qfa2i
         RNFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k3aQFkLA;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x229.google.com (mail-wm0-x229.google.com. [2a00:1450:400c:c09::229])
        by gmr-mx.google.com with ESMTPS id i30si227572edd.0.2018.02.19.11.31.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 11:31:01 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) client-ip=2a00:1450:400c:c09::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k3aQFkLA;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::229 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x229.google.com with SMTP id a20so1476981wmd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 11:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PVVAbPJ2dkvWpnbVi0EjptqESg26iVXERvs/2If6DWU=;
        b=k3aQFkLAI1Dr9EwG4ItXgZsyo8FWnTs6JPReXOP6IV3IWvNI/NhZWxwVj3UPWHUvIV
         yhXc+XoHd2FdCtcsnqkud/7CP2ZurecjGkeXC2SQEW041hUIJ8EtypYYaMdzi//AXBOt
         +K3cQOn+47Kltihd0WB9QG2f4O2/wBmHvRNkYmPf/EGR9oiP0+5uHBj5/G3Ck1Bdt5N8
         uGMYaZwjsqLVe0GDuPav+IvOExmrjnUzhq2NvROhVv/GIbtGtS6hOhSIfjcr7v1czo+Q
         ytN/rXqQjIM+XAv0Xuf1dF7JA+YfW/81JzmvlfFYa6L/GPmpZG8pJz1VEvcWuZCbdvPR
         AkSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PVVAbPJ2dkvWpnbVi0EjptqESg26iVXERvs/2If6DWU=;
        b=IARnWVhYnfCXRFCmkJD3n4LnffAe1whufqZ91v235ldiW6NgbxDtmLoTzsoOGX3hgX
         unQ6yp37zVoee4YXC+DAj1pmdrxIVtX7/Z2MQVxu9z027//mGM8NWaR6Be3zHIQLZWRh
         MrLNFTpYacWwv109qxgSnP42546BuuTvLP89kTsBqQ/FKgjBkMSwuMwz91+P8k7FKSpH
         riR6R7O/zKIoaX82rOa0QdTYpgP9XO8huaez4jENiuINHv357vZ7dmMQOqOFyloaXHVH
         rMj2LE3x5RtlNgv50md6XzOm/GOX3IqjwrNuk81lwiIuv2YeAp2cB/dR2D4epcwwJFuH
         NynA==
X-Gm-Message-State: APf1xPD1Y2daG6xxBwDzT+341EW8vxgVHUcRDmQnXZ3NMobXM2xHsogg
	JANKvGB/RsPmrfIHNPxDSdZbwExA0U91XypVdZ0+TA==
X-Received: by 10.80.192.68 with SMTP id u4mr20586897edd.109.1519068660944;
 Mon, 19 Feb 2018 11:31:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.160.229 with HTTP; Mon, 19 Feb 2018 11:31:00 -0800 (PST)
In-Reply-To: <c564850c-61c0-48af-a8f1-d3f03f3fbd11@googlegroups.com>
References: <c564850c-61c0-48af-a8f1-d3f03f3fbd11@googlegroups.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 19 Feb 2018 21:31:00 +0200
Message-ID: <CAEnQRZB6T3C8s5xZdxQ=82tPk4Ewe8JHDU0V2Ye0=rhGTn_4gQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [SETUP] menuconfig
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hi Nishka,

On Mon, Feb 19, 2018 at 8:24 PM, Nishka Dasgupta
<nishka.dasgupta_ug18@ashoka.edu.in> wrote:
> make menuconfig does not show the driver I worked on (xgifb in staging) and
> I can't seem to be able to set staging or xgifb to m. How can I make xgifb a
> module so that it shows up in menuconfig?
>
>


Look into the Makefile from staging / xgifb and see what is the CONFIG_ option
that selects your module.

Then use / to search for your module. (e.g /XGiFB). Perhaps it depends
on other modules so for that you cannot directly find it in menuconfig.

