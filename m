X-GM-THRID: 6525083396428791808
X-Received: by 2002:a25:2708:: with SMTP id n8-v6mr2506599ybn.47.1519250399871;
        Wed, 21 Feb 2018 13:59:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.114.135 with SMTP id n129ls132149ywc.4.gmail; Wed, 21 Feb
 2018 13:59:58 -0800 (PST)
X-Google-Smtp-Source: AH8x226tFepmDmih5mD8ZB2SCsP0QrHk7QRs/ri6RGJ6VG/kGHDACHqtT06H7aQTjuYlk8Sw2QPO
X-Received: by 10.129.120.146 with SMTP id t140mr2521296ywc.32.1519250398699;
        Wed, 21 Feb 2018 13:59:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519250398; cv=none;
        d=google.com; s=arc-20160816;
        b=hG+LeM5uvouThDezSyVTPy1xpJpSyAnBSsqGL4TCPm4OiG+oXZT7qLWDWJgZjPaJFW
         jXy5bRTo29fG7DDd4B0tTCixHP6BIyUHs2+1VjGWi43Y2Yf04HO1H6V+k8e99N2VPGkX
         xsqFCo+RxAroSoCpSKsRva6+/ujf/e7/NEESlo0HxcaoOkkqxatOgps0KQSTfn2hB6Zo
         BN+GlkGiNcBfc/aWkOMo3XY4M4Jw6ljgTMJ7g4Sw1eBhK8nNh63tfbel9JisXrRIgZjH
         cAm2mcotXZnv+Yza3suGDbswZYf0Y7e2cqJ0VDOF4fT0XGJYJXoVnPkL4OJ7Vj1yJqzb
         PSrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=7a0wQaZVIPv0KFI6mecLVVYUa/pxbdxSTU6Jjj7UlIA=;
        b=BeSKxiDHE5kSN8Eub+nPLCJOvhz+N7iAqjgN1n0qiPFj0W0OqfWhkcVrBCXAwn3m+U
         0WkW+U7d5b+XLqA9ZjMaV5GaVaHe7RC54dkNrPd3JqpTNM2xCjIxszj0DHBuZH+ovx5b
         2Kok0U6umd+k9rcDOqHFcTJKdFgUCPlpF1bLeUZ6+cgoWPP//LYOE+2vPJ3hdMqqeQUU
         SnUvm+xB6La2iDdw4HShLsIepUX44QdW/Ohd3LfHeTNt06cwAVgkFVVDXELYw5/shc9z
         L6W5VASz2Dg4vYBu7uBsxxJ8UY+G1SBk9RWzZFiWhHl3tuzKxeDyod1j/gUqWqD3ZKEv
         h5mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UxT3CgSp;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::22f as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x22f.google.com (mail-pl0-x22f.google.com. [2607:f8b0:400e:c01::22f])
        by gmr-mx.google.com with ESMTPS id t4si140920ybl.3.2018.02.21.13.59.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:59:58 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::22f as permitted sender) client-ip=2607:f8b0:400e:c01::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UxT3CgSp;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::22f as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x22f.google.com with SMTP id x18so1704747pln.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 13:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7a0wQaZVIPv0KFI6mecLVVYUa/pxbdxSTU6Jjj7UlIA=;
        b=UxT3CgSp2kEE2nJGyNTajdmiv+O/XJqAZmwLDhz0FEIFRfmaieANeLFkJZzAEkc8A9
         8pynbyaBIlmi+vM+9Pg8CEfLlfc14PGDdoMH8OvgoYP9dgCYHn6UTt7Q6kXzoXoE2sVS
         9iOcbcCd/hB+xDAqwwARnLqD7edr9HQfsAHgV5QAiGGeF+oTYj0iyAAmXXUVzmh9qES0
         qARMoTKDz7xUEOCicyBZSy3BZAXtZq4axwF1qnT38ijwxvl/qa29Mp4ldJJfp9K2Mh4V
         m9hL7UYejUu/UIpel5/KKsCS2F15cgxC7DzC2YU3C3U1X/iPDeZRH1HvuNb3h0IAWzuo
         rJWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7a0wQaZVIPv0KFI6mecLVVYUa/pxbdxSTU6Jjj7UlIA=;
        b=Vy3bItdx3s85a7shzFJ+PyrnDxEwuRXwARZKdNhgqpzjLe49OVgexwqe7Jz4jeSIDZ
         +O2no0l3yJxsDS1ZLWiZyNqMpK0LmU3g0VIaBXH0JV8OGkRgtYjp21535NPr6clIAxAu
         4x/nZWHUlXY8Di4yyFh/ykyY+wuQhD129uYyu4DgP5fw6IymRAM04NFWXpFHHemKomeC
         JKnHp6JGIEECcmZdPFxKEOcoVqP18tlt77bMjFKyM0Sq5HkptEjf9fWZ3ksSYk1y/kcv
         B6LK6aRPYwjAf6J5HDES6bGqD0HL9mcgyamzZ0M/TwqOM8csCtFpyOTcugyYJr4L2St8
         wK3A==
X-Gm-Message-State: APf1xPCSEV8GhnQR1ej3z9f454d6RWHMiXgdPcnz4n85lcP5iQemNwKo
	UZ7k/Rc5/prHEPaHactfhzaWVB/H
X-Received: by 2002:a17:902:96a:: with SMTP id 97-v6mr4445769plm.183.1519250398164;
        Wed, 21 Feb 2018 13:59:58 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id m80sm79308121pfj.163.2018.02.21.13.59.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:59:57 -0800 (PST)
Date: Wed, 21 Feb 2018 13:59:55 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Cleanup in staging speakup
 driver
Message-ID: <20180221215955.GA3637@ubuntu>
References: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1802212210440.2292@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802212210440.2292@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 21, 2018 at 10:12:10PM +0100, Julia Lawall wrote:
> Actually, you should put a v2 in every patch, saying that nothing has
> changed if that is the case.  Sorry that the tutorial is not more clearon
> this point.
> 
> julia

Hi, 
I noticed that I misspelled 'begin' in commit message (my bad) and that the logs should be rephrased. Should I change it to 'Changes since v1' or should I include what has been changed in every version? I'm really sorry for the confusion.  

