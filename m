X-GM-THRID: 6469049838689320960
X-Received: by 10.129.124.193 with SMTP id x184mr1598128ywc.191.1506193037242;
        Sat, 23 Sep 2017 11:57:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.102.132 with SMTP id a126ls169381ywc.20.gmail; Sat, 23 Sep
 2017 11:57:16 -0700 (PDT)
X-Received: by 10.13.249.65 with SMTP id j62mr1641656ywf.20.1506193036323;
        Sat, 23 Sep 2017 11:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506193036; cv=none;
        d=google.com; s=arc-20160816;
        b=qVT6S4JS7VXdlWMiao0uxLhIo7cHFC1amY+qLcVNMcw7Bq15BjW++wegC1Ux9G7iUm
         ZXRADFlVig3T5s4G+s/5toV/SsvYx1wkUkBEEeXRSpG6faUJ9+nRiqoZFVKzf8FSjqSe
         9nBJE/4R740tT0XhK7zXkWQ7h8Al+Jd9Myktwci4T3vZvrDU8Mcl159VmgJti4y+Ctit
         KKumE8X8JbokUJUvLUaNZ49R8c2p1rNbboBU9P7YSwHpJB4WynZtG5LCk3WwxlH2sn1X
         THmYZl4Eqq/VjfqUb5u49pm0Ppd6or2ziY1PuC5HarOmHZ02wQWsDHMeeSXRhlgmxGBR
         rjxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=X5O7OQy/vwgnt1zc53qKdXTKH+D0Tf1fodNDrNVRp48=;
        b=tOMZG4s98wSEFOya4PjZTmmGm54OOI59UAgAbryQGeVnoDekNI3bsYejSviAzXsMtD
         0u/X5DkdybJXC2qpclrDiCsShQeYvxoT+cx0CeCzM2I7l3tlyiGPzRq8A9LkpmxcpT9t
         dMwgWGHrlakIfg6feHw4sHOL8BH5ahD8YImQ8UTcHHv20a1kKZsMbWQAfnZZtcMe8bRA
         GZZNG6fPCMyf7l1o0jQyo2iT76F+ZUhZwb2jSfWl4EHZ4IRUf2NGHKuMsjyKyUWgfKte
         55BQMS2LdqoM0OHq94qHEpzvDvaKN2gNXXV8q4DcC/hVX+OwO2eWmiDGgXQ5cC3tq2Go
         iTLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dx6EVnjD;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id q65si203621pfj.8.2017.09.23.11.57.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dx6EVnjD;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so2551738pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 11:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=X5O7OQy/vwgnt1zc53qKdXTKH+D0Tf1fodNDrNVRp48=;
        b=dx6EVnjDYaRWgOvPKEvfr7vGwV2xrF/WpAXbOfPKyzLsMnh/SgWPLwAF0hz29By8oH
         efdl9zcBJTzE/AQHcYoeSL3/8ZC3/nuSPbiUa8ARBUjAo0DXlDFMqJTpaSpHrZpNSzR0
         n+QwZoOWILsuN0EkCJtkqqN1GSY6Xl2fQG382coi4ywSl2yOpM0mLl3pVAhfu8+lgmqJ
         P53YmhBPuBmOI66GiBQqkCCLVhb/hlvTIOVasTCWMWxgi/dSIEWJ0TvXcYoEGjWaDCaX
         6KV0pZ1/3bbIsRCHmL2C9g0kjEzmZKYYpUDDTGvQUymsF4h4LG3DC3aJhd4DyN2Bx5dJ
         zQ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=X5O7OQy/vwgnt1zc53qKdXTKH+D0Tf1fodNDrNVRp48=;
        b=f5Lte/Mq/7pIaCPqf6QokR9M9lZnHIxKdfuqNkg+0LwZcFKieuaaWmqzqHoOT4Isik
         /8gbL+zaOcT+f2TMmB+Lr5zLmeJzNT+RV8DrxL2Antz9zEwr845UMSTNCcD4z9Xq0c1I
         z7z9/fnWcCFBDRX0LTb3myeUGCb46MMDXO4uCIhYwrEH9ZuhHmtehi6BMGu9Ts8vAZBY
         SUb61uHxJw3sNXz0PhmhmeJUiq5g+DbBZOEz882hO86foFDzs6W1BFI1f2gkszDVGoKm
         5fXOIqSdD24X6VQyJ4NjxDjp3coT3f5C8a5EvH5lKmDwyczVeDqpqEkLMtEepUL2xLXH
         QQTA==
X-Gm-Message-State: AHPjjUj6zjnmgW2dCgtvDA9Jf/jvMaRDqLTqmbg4fjXVaZOBFBhYNvPa
	YeZkYx+McO2/rRrMYVmjNY+mUiVF
X-Google-Smtp-Source: AOwi7QA1wOuNaM0H6PCWiW9GxU1OwSz+ApikcphIC4vC0BIVF5CZYwbBFTyMif1swDd4F4kAqSji5w==
X-Received: by 10.99.120.3 with SMTP id t3mr2864781pgc.388.1506193035892;
        Sat, 23 Sep 2017 11:57:15 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id q13sm4439615pgt.87.2017.09.23.11.57.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:57:15 -0700 (PDT)
Date: Sun, 24 Sep 2017 00:27:13 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: wilc1000: follow coding guidelines
Message-ID: <cover.1506192874.git.keerthigd4990@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch set fixes blank space related coding style

Keerthi Reddy (2):
  staging: wilc1000: No space is necessary after a cast
  staging: wilc1000: Blank lines aren't necessary before a close brace
    '}'

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

-- 
2.7.4


