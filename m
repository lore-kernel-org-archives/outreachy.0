X-GM-THRID: 6618737831817773056
X-Received: by 2002:ab0:185f:: with SMTP id j31mr2975032uag.9.1541665233945;
        Thu, 08 Nov 2018 00:20:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7bd0:: with SMTP id w199ls49501vsc.8.gmail; Thu, 08 Nov
 2018 00:20:33 -0800 (PST)
X-Google-Smtp-Source: AJdET5cns9jNCYwR64g5U4+zi2HaPIUsPipEXtv3UrM/NQokMPvWJxRYr86xxZrjw2QMu2u5QzK3
X-Received: by 2002:a67:cb15:: with SMTP id b21mr3009424vsl.33.1541665233151;
        Thu, 08 Nov 2018 00:20:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541665233; cv=none;
        d=google.com; s=arc-20160816;
        b=pl//ab4vp9UOcSvAc03XyVAfRxqrnsfc6XngLyW9aw4OMBogiHhB4hH9WtDd81CQwa
         mIT/D3Z5FzsK4r2pBk+c4l+77ij4PEuqqwgN7qgM23G4IZ2mJ1/u9LK9jUT5QjrOs02y
         ir998J/aeTD4gvbYVvZS0AbGpnvyvrPvw9po75bc2JVIPGZHOWBRIqcgqwqIiRYBq1Os
         6IfBdGE90kitCbXedzC0M6/OZedpbYdUdux4i5yYAr8t9xy9Y/NPPPd/hZA2fEMn1y86
         Gd+Mu+e2+zEPNZz7vW5xwE9HuwkqSSTv2t3rX+OVHZn4pNpwObcX45aOH4IHAeTd5iN/
         my1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7HIZyggvcwlAPSKhbLn5uLyynHHi3hmco41HzqBnWws=;
        b=SfyybIa1NCrZr2z31stmMiV2UhVpFRtw0BuZuyDZfPfPLP7XFEqNlIGbjahO1FM4dq
         BnKXV5Z4evBtEEme+bnZaa1XoBS0gfKa+wR16n/QkijB/ESyBfpCc+hFJ4A7f8jiIACP
         WAtGL6USuXN0KsUqWSfu/bfVIZtq2ruX8uIO2hhFiwoDUkqpA0FiKa/poiHrWJUh1izp
         TtwhtUinM08vFOPU5/hGumIwyPXLV69CGJ4OXKvQU+K5fjYKGcIdH+Gg3FsDsoDriSwz
         2ZDXlC+s5vSu5a+EZ864XIiuHnrnqydmd6hnJjYZO4RoUrgvDl5r7xZOdpAqe24e0pPF
         sBdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NAqQmtrB;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id 143si94427vkw.4.2018.11.08.00.20.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 00:20:33 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NAqQmtrB;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x532.google.com with SMTP id 80so589318pge.4
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Nov 2018 00:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7HIZyggvcwlAPSKhbLn5uLyynHHi3hmco41HzqBnWws=;
        b=NAqQmtrBL2e1TEaQwQR22v/Ux3hBktPJ3hw5Sr7bumGsmmQ3wfz+BplTS/voMlwtny
         gxcDOrYsusqroi3QUc0uV9jXhiHnv85n5PW0CSTHTZ/XTO4pTFI4slgVv/pNcreNZyU7
         eYBJjPw4A3reHbeXqkl4x1q8Ea2i/V/rJN5IUdvFIw8bBwVVbKcYl0boRHZI8iDK74qW
         utSJ+e2ndC8h3qk3V99CcnMdw3Y/+4lgs03iQ5crIS0rh3EUTXW3SYTX7RZZXaNlXUoK
         arvMFZaSQvRgO4owrIG0EySnLk7CDma/rfz+xdYFCQ8HFwV0aVYCxDr7QOKkuGf4mJzS
         iSKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7HIZyggvcwlAPSKhbLn5uLyynHHi3hmco41HzqBnWws=;
        b=rJPttW9mR28kQMxBy2bpTyf5iGnFf5qUMvxcuTg7TunDcOAag1UvuOpaUtkmlUxy5h
         oCurbWfmNu8+PNyYFZ9oo/KmQUy4NTaToi0ifviRHeQOS7g6RrCpZP5HcOHUN/ke7Eqk
         iNdOTU+kqYCMwbGc/GY4LBbnjuqnQNENdDhWxuRv1F325SrjOV0FGq3XEZwn14pjC8su
         gM++bEWBdpyqg2RsrSZEqwydFEovupqAyUy0nuyG7EG+hVreJvtA8ZH5sW7z92FScwDo
         g+BTQc3i0cqbvbQSfKw5UlPg4URB5dxk3r3A1ckLD+ct7siyQtFwexNRccgWLYTmxya2
         SeBg==
X-Gm-Message-State: AGRZ1gInEgisoCOdGeQecAfmdkKrmbPk4rX6efBVmZAWs+gG6YE7Q5ia
	deZuKZErmwxYxI0Ct0g8tJ8QQX/z
X-Received: by 2002:a63:df50:: with SMTP id h16mr3053124pgj.421.1541665232630;
        Thu, 08 Nov 2018 00:20:32 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from m-hyperV (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id i189-v6sm3183439pfg.156.2018.11.08.00.20.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Nov 2018 00:20:32 -0800 (PST)
Date: Thu, 8 Nov 2018 00:20:31 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: rtlwifi: Change line and comment spacing
Message-ID: <20181108082030.GB3624@m-hyperV>
References: <cover.1541037077.git.m.maya.nakamura@gmail.com>
 <a0c1be6312a62595a5f8f7e0b02ced685933052d.1541037077.git.m.maya.nakamura@gmail.com>
 <20181105134735.GC8389@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181105134735.GC8389@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Nov 05, 2018 at 02:47:35PM +0100, Greg KH wrote:
> On Wed, Oct 31, 2018 at 09:06:27PM -0700, Maya Nakamura wrote:
> > Add blank lines at the end of if statements and spaces before and after
> > comments. Edit statements so that the line does not end with an assignment
> > operator or a parenthesis. Remove a blank comment, too.
> 
> That is a lot of different things all in one patch.  Please only do one
> "logical" type of thing.  This should be broken up into multiple patches
> please.
> 
> thanks,
> 
> greg k-h

Hi Greg,

Sorry for taking time to resubmit my correction! It is a new patchset
because you accepted a part of the previous patchset ([PATCH 0/2] staging:
rtlwifi: Modify bool operations and clean up spacing) on the 5th.

Thank you!
Maya


