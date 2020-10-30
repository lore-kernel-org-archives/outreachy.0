X-GM-THRID: 6889129421220872192
X-Received: by 2002:aca:5ac4:: with SMTP id o187mr1479826oib.112.1604061363667;
        Fri, 30 Oct 2020 05:36:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:54d2:: with SMTP id i201ls222208oib.4.gmail; Fri, 30 Oct
 2020 05:36:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBQwz8DrKudNGRpcixrhjgz878HliIhkfVgsGwr2M4vMzqXRU0PqXY7q0g9xbhf1ZbOPJM
X-Received: by 2002:aca:ba8a:: with SMTP id k132mr1515787oif.23.1604061362356;
        Fri, 30 Oct 2020 05:36:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604061362; cv=none;
        d=google.com; s=arc-20160816;
        b=vWogJzi2PDKf/5vay/2oq4Js8J1MjnXZCYQz3NGvSrmICmOhyovq4Msum8lGvNIE/Z
         8PO8R1eBFhLIvE/sTjWsLpVquoGlKTEcttfr8D+ktmxz3BJfACSGxRaaxoNS3EqDa8H7
         Ijg/pG/Po4MDddA3eVYvd1DvbADK+cK4ecVg7lApdQGObeuIUHwRvmQNgDAlzAhXWa+T
         c9X2JUYPXiHiVrGbCRO3PoJggI24GwXNiOxCzJTc/JCaU5qqR5ivtwvlZ8OvKp3nHiXh
         GhTfDd/fLKjNP4t1zgDNrg8n0NsqA9TFPcJrpZhb/qFuYr2cZNO38g/mzzh6+ys1KJbB
         VVFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=VRx3Ak9L/R+2TJy1Ha4/98lgSd8ABIZMwjsfQ3NfBq8=;
        b=o4zVmXEd/TkNNHKrvX2zBRyl1gerkQNYEHJsPNxuzyNo14QaeyZSVKiJbxmaFYQTph
         vhlbNfGlvsMLq3o8xpS0kPNuNjoHMuGwptkMQ05LITo1cPBtD8iKYygc2UR+zbkaDFYJ
         v9qc8CoByEzLZrjxmTtj6jPe5svVkcAmAud9qT6Y8S92AFZyzaw285cImnZ2nwHXk6Y5
         1XuVPUaTQtzqOAVBBu+8IR05rr56lm6SST9OW/W3bRnk+yB9VTwsA9kdL4P5Wvh8ykhX
         ZTW8Rgf/NUF9O8oMWmTFp5UQS5FdNj6g/G8gVFetFlHrDRUitMX/sA7kasO0OuopIKYu
         dPbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5h+X1h2;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id p17si532993oot.0.2020.10.30.05.36.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 05:36:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L5h+X1h2;
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id j5so2875170plk.7
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2020 05:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=VRx3Ak9L/R+2TJy1Ha4/98lgSd8ABIZMwjsfQ3NfBq8=;
        b=L5h+X1h21kNMnCCLEgR4/rk3GVsLJAFpQ2idScuh/vM5tKzzy+LVHVG1cg1dyFCkJL
         weHk5nqiwHavDkHYwKPD3fKR1LTw2fdQ6kbswItgjH4CFcgmS1C2YCocaiQ6cFDak/Vx
         aqsURPn8QhXXqs/PM7mgCmxjeOl/y943e1GIeowiThl8WyqBORgolKoW2NOvgtTggT7I
         zFVWjImr6jxDEbMeKo2sWdwuzjEEx6Btwh7E4SyAdiKjWE/uFUhQLlTZN38PmCRHdKKW
         fU4udtHICo7GcYe7oIY/MSPixgDAHt3wuo1eqzuwqnrQ1a5/504KWstlaKDgXnCMVlqX
         IPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=VRx3Ak9L/R+2TJy1Ha4/98lgSd8ABIZMwjsfQ3NfBq8=;
        b=iTFzGboaWLGh1cMm/U8qZjb7B3YbD0DZGKzDW6zboXB6m5PgcTmjCXuVsF8KKcl3Lr
         eEduqgZvN3i4qvL6EIK/GxcCX9A7NOAj3R2um/OF7stOYw1KW6nyw/GdSM5cc2pUEXod
         zzEldpYtlrz24Sd5cPw4nZEeZ3Eqwau46HjqJMSKlq0IdxcR4v70jtQ9GDYXTYxJFhMF
         Ez0FRSkQc7aZlpDTvOe6KWAwPlcKBIP0D3RSlPh+2fHpkz2NQGw95Aqtikt0vPD0EZUv
         gM0r4XUpiP2kv90kSdpDx9oV658v9Ax5CN1TmxyP4JCRtjJDeLI/9G8pmPS3bP5mKWdC
         o9PA==
X-Gm-Message-State: AOAM530dbOo/tNruRA0zXgL/Du/B65E5e14rZ/DW8egL7/A6W5EzmDsQ
	GDgTs8zauUGM32bGvvzVj2t/is4CpEH9ESQw
X-Received: by 2002:a17:902:76c5:b029:d6:a399:8231 with SMTP id j5-20020a17090276c5b02900d6a3998231mr1718730plt.3.1604061361798;
        Fri, 30 Oct 2020 05:36:01 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from AJ-T14 ([66.181.185.125])
        by smtp.gmail.com with ESMTPSA id e5sm3689353pjd.0.2020.10.30.05.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 05:36:01 -0700 (PDT)
Message-ID: <687cd3942fcefbd153d318bf0d7014ff01f0bce3.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8723bs: hal: fix
 position of constant in comparison
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel@googlegroups.com
Date: Fri, 30 Oct 2020 20:35:58 +0800
In-Reply-To: <22b1470078eb13300e7afdcede8aaff27a95b75c.camel@gmail.com>
References: <20201029194029.141165-1-amarjargal16@gmail.com>
	 <20201029194029.141165-2-amarjargal16@gmail.com>
	 <20201029194643.GD27442@casper.infradead.org>
	 <22b1470078eb13300e7afdcede8aaff27a95b75c.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-10-30 at 20:29 +0800, Amarjargal Gundjalam wrote:
> On Thu, 2020-10-29 at 19:46 +0000, Matthew Wilcox wrote:
> > On Fri, Oct 30, 2020 at 03:40:26AM +0800, Amarjargal Gundjalam
> > wrote:
> > > @@ -1670,7 +1670,7 @@ static bool
> > > halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
> > >  
> > >  	if (
> > >  		!bWifiConnected &&
> > > -		BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm-
> > > > btStatus
> > > +		pCoexDm->btStatus ==
> > > BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE
> > >  	) {
> > 
> > While you're touching this, please reformat as:
> > 
> > 	if (!bWifiConnected &&
> > 	    pCoexDm->btStatus ==
> > BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE) {
> > 
> > ... fixing the name of that stupid constant is probably out of
> > scope.
> > 
> 
> Sure, I can work on it. Can I do this in a separate patch? This
> driver
> has lots of namings like this and I'd like to do single type of
> changes
> in each patch. And do you also have any suggestions on what could be
> the best way to shorten these constants?
> 

Oops, it was not about shortening the name but reformatting it. Got it.
Should I do this in a separate patch or modify this one?


