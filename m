X-GM-THRID: 6524253044666793984
X-Received: by 10.202.108.65 with SMTP id h62mr7541625oic.17.1519047644770;
        Mon, 19 Feb 2018 05:40:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.130 with SMTP id f2ls4710011otf.14.gmail; Mon, 19 Feb
 2018 05:40:43 -0800 (PST)
X-Google-Smtp-Source: AH8x224R1TGrzv4mGcxOIVNYAPTHuVEoD0QFW/GYrXyF03p1P27E/IjZZskE+JoTMJwCd2jCD5Gk
X-Received: by 10.157.56.92 with SMTP id r28mr7165492otd.57.1519047643647;
        Mon, 19 Feb 2018 05:40:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519047643; cv=none;
        d=google.com; s=arc-20160816;
        b=j7dfXw0vS05qOHkav3nMj7KxDTCfAzCzTt8ROVmWuG9dEF0r28hcENy0bXzsXPhVFP
         hZC9LG9p0M9G79BkIbTosMoLXTm+koMwTFE8nplyrTyWnzHCeXOjKtj6m9h0sA9X7olY
         a07DG9cVCyKu5LlXxu3THWcQUAyaEdcd/V6eA+se0Te6uom/K5hben9aJvOUEmHCvlVF
         EsBV7jvQR/kLFoJfJA2pRMy6T55BHmeSigm3Pa9bxZKLJzwey6AGw7x1/p90WGAFoffG
         oUmnO91omWxa1MNX9RnY34vDjmF+LFIAnGDgUTSBxX261D3DQUORCSZ7fxIHl5pjV3Uo
         hVJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature
         :arc-authentication-results;
        bh=37Vn7zBGKYtdhGIN77JNbWAj4PY4rio8BZ0xdPnfzXw=;
        b=JKVaHJSF8LooFiHaV7hceby0hot763dMsRuTllQwGbnjQwyDqOikydGObJtvz6UBGy
         N+XaGK20uzoXMX+e7cTJLO0eyTrKsy3oZf3FjVlmScLALHdRpCA7oD7+gj8OmpTi28I3
         L++sAqmvDoOxTlwzFTzcQDlrZuGi7jIsljfujyubZb9N4RiRooUeZ1WaLhp8EatbqI0u
         njMzgAK6ZHR6iXCL3tN89Fu6Wr6j1dyPBXZmBhV82NzxlE/NuMDzyMIG7Y1Nyw4QRS5A
         B0sJHQNRWGf6aRnJoEsiLPS0BBxt2ZcJFWkYmJV7m3TpM2PKFn/7brWm2h6voQLsZAYh
         R5tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XrqE2XQb;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id d14si611868oth.5.2018.02.19.05.40.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 05:40:43 -0800 (PST)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XrqE2XQb;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id t15so1350292pfh.9
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 05:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=37Vn7zBGKYtdhGIN77JNbWAj4PY4rio8BZ0xdPnfzXw=;
        b=XrqE2XQbmtAqAI9tIYdJzQN/sUwRz4TqSGllYHEuqVn8cwh8ZiLPiZrEX6oFOYY+F0
         AXuqiVGMKUt+EY1v3r71tfBP+OM4cnRFrgzg9YtuxEU7Jsk0aF670kOGIhDEQEJ5im7A
         Pg+MOeWE77qb+LKBM+F+Nz1IS6eiHbu6/bHcEDGMu314SZWrZWKuGeXC3XlJbHvnToZO
         2O72qX3VtoUvUtGAy7lkI0UvBh5Yq7JuR3EMr8aTDlcZJZQ2elaGKKXqK+UA3zRJhqsf
         fth2IkaRhjkK758jQGDUI6xSQ/oOkU01HIzsG5lEnMpiPZ81J4wRGJm2c3lw/q6hV6Gr
         nkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=37Vn7zBGKYtdhGIN77JNbWAj4PY4rio8BZ0xdPnfzXw=;
        b=W7P2hS/q+uXNnA4X/yMGvt58lEL2WXkajMKyLuytgH9S16lb9Sn5HC2ZStIFIZldL3
         gc0Yd0kj65131dvuug2aDEWcw2zvEaCGnpFvUME23OHTGkS3VdQMRfqujBKoA5cBCf+9
         PC7lJNyjYF2EsHqkONDcAV78WhAWMlDRz+I6Rt/e5VfuFpqLmht/QhCaqwKMtF48m2lR
         GXDYA6qXOF8/wC1pqPH0G5EFtOAtPKP3U3wTnZrtiFh5d53brcQUF9untdIrGotAMwHR
         DO/Mo6wgcKGM2d8HkXe0U1eiIn1shwifSbU6OBWzGarxp7E5BhWwilCVP7EFGcUIfHT6
         qjlw==
X-Gm-Message-State: APf1xPA5ngZZq1OW0ljLhGJ5SZKkMk5UvC8xwYRUhiGgURtt6eVWy29m
	1IsJCwYeFW8oS0jTQBMKh+I=
X-Received: by 10.98.69.146 with SMTP id n18mr14765373pfi.29.1519047643299;
        Mon, 19 Feb 2018 05:40:43 -0800 (PST)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([103.212.140.144])
        by smtp.googlemail.com with ESMTPSA id b18sm3541002pfi.34.2018.02.19.05.40.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 05:40:42 -0800 (PST)
Message-ID: <1519047636.2063.3.camel@gmail.com>
Subject: Re: [PATCH NAND v2] mtd: nand: Replace printk() with appropriate
 pr_*macro()
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Richard Weinberger <richard@nod.at>
Cc: boris.brezillon@free-electrons.com, dwmw2@infradead.org, 
 computersforpeace@gmail.com, marek.vasut@gmail.com,
 cyrille.pitchen@wedev4u.fr,  maximlevitsky@gmail.com,
 linux-mtd@lists.infradead.org,  linux-kernel@vger.kernel.org,
 ezequiel@vanguardiasur.com.ar,  outreachy-kernel@googlegroups.com
Date: Mon, 19 Feb 2018 19:10:36 +0530
In-Reply-To: <5296610.PbIriun04K@blindfold>
References: <1519046025-9412-1-git-send-email-shreeya.patel23498@gmail.com>
	 <5296610.PbIriun04K@blindfold>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, 2018-02-19 at 14:30 +0100, Richard Weinberger wrote:
> Shreeya,
Hi Richard,
> 
> Am Montag, 19. Februar 2018, 14:13:45 CET schrieb Shreeya Patel:
> > 
> > The log levels embedded with the name are more concise than
> > printk.
> > Replace printks having a log level with the appropriate
> > pr_*macro.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> Multiple patches with the same subject are confusing. :)

I'll keep this in mind.

I did not combine the two patches as they had some different
changes.

Thanks :)
> 
> Thanks,
> //richard 

