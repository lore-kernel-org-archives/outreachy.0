X-GM-THRID: 6950672534035496960
X-Received: by 2002:a05:6512:1147:: with SMTP id m7mr19056544lfg.337.1618344515738;
        Tue, 13 Apr 2021 13:08:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls4131468lfa.0.gmail; Tue, 13
 Apr 2021 13:08:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfEmZPi2drgLpL2zeVS8US2+Mq5vRNcBmH2g5B8JXpOchHXvvugq/n9182na2MDJwdI/iz
X-Received: by 2002:a05:6512:208a:: with SMTP id t10mr23025569lfr.585.1618344514079;
        Tue, 13 Apr 2021 13:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618344514; cv=none;
        d=google.com; s=arc-20160816;
        b=agtgtp/sUrcIdQOzb03KPmxuRrIAUAv1JWbwVBqpJm/bcp1+K5p6oHZKT0rtpaaEFA
         mpuGnFj6xOVbWUkj7IiSSy0NmfK9kp4OIqPF4XIA5NuFKcQSsYmtmAL3UfmzRVNhCpGf
         VwAgaXoKKVD3jQPEXOEUIPAhsMErL/OQ4pXgBwkzAXpA8bsKrkAsmJcHPXcgMl9Ia+sZ
         d+6PhwtkZmnh+y5ztMdLbxFbRb0HoUBP4Ihu1Nl7vlr/Xu0PLS9tM1M/zVJi/fO6sAd2
         If+Gm5SPEKm6xE1vgOqthLY7SpM3DF78ru2RsjsrGNtNA3SWACrW1/xz8udE6e03BuTX
         ZyBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FxiwZS1ypRO0CPpMIgmz+1n36gXQuCqv0DCfrFyvXvE=;
        b=Whb+44BZcWd/TMfrPndX6KO2qR7elnmDdsHknTXepLqM4MAhyuFZ/FshbLIF0xR5D0
         pcJCC6Kqm6da3i/bt1odJxER7e3XH+lu7pWTGte5w90ebn3ftCFMwYgORVFH8e1USgP4
         Em2EMdGLtHHQqa/+SNSSvqeYJ59L8XpJkUizGTOtR/HEh5QkiAvdeCGpU71sJj1ZEtDo
         DaIt582SnQ1Ic0fljGKNNmmrfIqkunUAkGexhDkF97pyp4aCFLyQ0hWwdV9xFrt4Ept+
         QaOdL7jFUzllReFcHeXKlQn203Se6jFK3nLqF4csfU7mO3aV7UcKO04nmkXsOpfke5Dw
         s/MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WFzCm2+9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id n13si1015915lfi.5.2021.04.13.13.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 13:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WFzCm2+9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id s15so20876509edd.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 13:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FxiwZS1ypRO0CPpMIgmz+1n36gXQuCqv0DCfrFyvXvE=;
        b=WFzCm2+96E3AicJ9cw/P49tSLgNUOuab+s4Tax+yEMToNezQn+4WBP7DRAdu08t8OA
         ops0vkEYfihzCABQvwehY/4Zcm+zdVSrylQgQ/aL7W00kLGC/UNwfjRj7b7EAZudqgBK
         ChYtZs0yX1Y1qeJqaP+TtBKDkqSp9u1TUuZTCad3uMc2lFVJ92fy+uyLJ5mYPWW71QRz
         /PYZ2I1uxJnMWCTcdGpwaySLuIdeXA2CqdEzXXCksCrgTPUxFAfG2rjCCm2xHFT1VsJR
         d+O9tDYdfnO24qMWxoJdsqlqR39zOyovSEGEJ5bZr3+u17CDwC4gfg2bFivIRTgReij5
         3xNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FxiwZS1ypRO0CPpMIgmz+1n36gXQuCqv0DCfrFyvXvE=;
        b=O8nzI5fbKi/jozRqf69bQjQ0VPbi4A9phKlC5lLHWgKsLMXdaIXlCwP2xIroggISvS
         kQb3aIajZOVA+vTPeu8r7Z23b9bClSV52PMAxDxsD0fXcySMUe1m3z5q0An2LXcwrIX7
         da+VeR93CtiD70tMZLKsgWb40NEtRZMBFBHOEJwlPTvZnjwEnFRkaMILRGd+8ttsMnyJ
         wyF5EdzdgS1zooNJjFV0l6AwnT7a8L4xDTGo6uoeb0cvgjqLrHfl7UzgYJS2G4o/83C3
         H+QICBPUe1xaPi78OUsnf03qGsiqXDUwDYc6urXe3n+XG7BjH0z7RxBCGlAvi2+az1q5
         hgkQ==
X-Gm-Message-State: AOAM533eG66OhF+ho3QMt3kXIkMRWA8xdiCXZQfDFsj27aozW4dbxo5r
	5bvcjtJR87+VETgEG0rI/7s=
X-Received: by 2002:a50:fd16:: with SMTP id i22mr36470144eds.239.1618344513898;
        Tue, 13 Apr 2021 13:08:33 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id t1sm10207562edy.6.2021.04.13.13.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 13:08:33 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Julia Lawall <julia.lawall@inria.fr>, Dan Carpenter <dan.carpenter@oracle.com>, outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Tue, 13 Apr 2021 22:08:32 +0200
Message-ID: <3505455.GpAHCVcAZI@linux.local>
In-Reply-To: <20210413194844.GR2531743@casper.infradead.org>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <7008359.Jy8utYDuns@linux.local> <20210413194844.GR2531743@casper.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 13, 2021 9:48:44 PM CEST Matthew Wilcox wrote:
> On Tue, Apr 13, 2021 at 09:45:03PM +0200, Fabio M. De Francesco wrote:
> > 1) The driver doesn't call that function from anywhere else than the
> > macro. 2) You have explained that the macro add its symbol to a slot
> > in an array that would shift all the subsequent elements down if that
> > macro is not used exactly in the line where it is.
> > 3) Dan Carpenter said that that array is full of null functions (or
> > empty slots?).
> > 
> > Unless that function is called anonymously dereferencing its address
> > from the position it occupies in the array, I'm not able to see what
> > else means can any caller use.
> > 
> > I know I have much less experience than you with C: what can go wrong?
> 
> Here's where the driver calls that function:
> 
> $ git grep wlancmds drivers/staging/rtl8723bs/
> drivers/staging/rtl8723bs/core/rtw_cmd.c:static struct cmd_hdl wlancmds[]
> = { drivers/staging/rtl8723bs/core/rtw_cmd.c:               if
> (pcmd->cmdcode < ARRAY_SIZE(wlancmds)) {
> drivers/staging/rtl8723bs/core/rtw_cmd.c:                       cmd_hdl
> = wlancmds[pcmd->cmdcode].h2cfuns;
>
OK, I had imagined an anonymous call from its location in the array (as I 
wrote in the last phrase of my message). However, I thought that it could 
have been an improbable possibility, not a real one.

Linux uses a lot of interesting ideas that newcomers like me should learn. 
Things here are trickier than they appear at first sight.

Thanks,

Fabio




