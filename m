X-GM-THRID: 6254894706255200256
X-Received: by 10.50.60.39 with SMTP id e7mr6921503igr.13.1456331574094;
        Wed, 24 Feb 2016 08:32:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.131 with SMTP id c3ls137921qga.60.gmail; Wed, 24 Feb
 2016 08:32:53 -0800 (PST)
X-Received: by 10.140.233.69 with SMTP id e66mr9798465qhc.6.1456331573172;
        Wed, 24 Feb 2016 08:32:53 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id w126si210366ywe.6.2016.02.24.08.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 08:32:53 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id b67so17764560qgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 08:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=oBL/kbLBs/2hhhPTdrn+ijJ8fX+U9DUhUbTYE/nW4WE=;
        b=gT2Z0i6xdlhQsec4MSA7kgLHGTGHMmk6CKt54vjBLDNSAXJCt9bLiwFEP1i/x39CRJ
         gqt72qAIKGtMx9P9/QFQyFZ738j8np7D68sZVLvNUZE1XGQdXVdcjXQMMG+oIOyZEpfM
         fV+Zla4bcL7pmx9Trc4+av+TjhLeYYYIKOYeV2KxusLD4VPXtAw2+OYD4c5bD6Je2qHv
         /MOsPL74SASZjQDn4xRxNGACS0zbjD3iN/gqI9AEkp/YydtkJjO2Go2NtGsdlP2Plv6+
         PWidpPke+HjswUI8yCSVkiDGsz9zoVETucCT6rDiy5mE04/gpy04ePQObdEzhEfYSOf4
         rRIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=oBL/kbLBs/2hhhPTdrn+ijJ8fX+U9DUhUbTYE/nW4WE=;
        b=NAZgyhXxSRedlU1EL9aYWEXTQ6bdG5FgUtVEv2lpDEgaLHFpIE7GFN86cuC5OZFft8
         c9rWCgT8151VPMmzCZWaqPfh9Es2Tm322s9/84D0kO7MJH48fzU4BCKw/QhHbyKfUoXW
         bmk7XrUnBb0rtra+/e6b8S4DIAoAbUByUzOg/b5/CbLlqKnLyGAD6Wfh6ocQdQvYZwmM
         M6qM6m54H7nxzMLJhlqXxBol+ifr2+/7LKmAqPr+TntaNvD818dnE4oqn5REq2oQDl8I
         CLG3D4GTxHJZCKovd01hcZct4qw8RU88p0DQ1ayb1MRWboRUwm4Qyt/xDLL7S5DTIrx1
         QIjg==
X-Gm-Message-State: AG10YOTrk7IMFsg7U0/EOngCxSo5ZggXuDul3KSq0rUbtbFbO+HLHV4IA9aUmyn7S2+GYLWo7yShevFQiBFuyg==
MIME-Version: 1.0
X-Received: by 10.140.93.166 with SMTP id d35mr49008769qge.29.1456331572963;
 Wed, 24 Feb 2016 08:32:52 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 24 Feb 2016 08:32:52 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602241729040.2904@hadrien>
References: <20160224162549.GA3992@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602241729040.2904@hadrien>
Date: Wed, 24 Feb 2016 22:02:52 +0530
Message-ID: <CA+5yK5GgG_Hi8YnAuwReqC8oq8rJCJ7O6htxGiFtTZTWOFjKgQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Remove unnecessary macro
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 9:59 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 24 Feb 2016, Amitoj Kaur Chawla wrote:
>
>> Remove unnecessary macro SUBMIT_URB by replacing it with a direct call
>> to usb_submit_urb()
>
> Nice catch.
>
> julia
>
Thanks! :)

Amitoj

