X-GM-THRID: 6463802191249408000
X-Received: by 10.129.156.201 with SMTP id t192mr4832520ywg.127.1505010881125;
        Sat, 09 Sep 2017 19:34:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.68 with SMTP id 65ls2329340ioi.0.gmail; Sat, 09 Sep 2017
 19:34:40 -0700 (PDT)
X-Received: by 10.237.60.60 with SMTP id t57mr4117045qte.1.1505010880354;
        Sat, 09 Sep 2017 19:34:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505010880; cv=none;
        d=google.com; s=arc-20160816;
        b=RW8SYG5wAGmi2OlrKkCbZVwwhiojyiBmCAgf4QbUkGf+rner1WpSt3u3lVLP7h76Si
         OzrOChtlUyFDKRp2p68aV/PHJGU9OW1/5BkQgtuEiq4mcSepFpkvx7ihQ8598E9P7+rG
         5stIfwYUSB5qpSc3TMIM9Yat5dEgtKj/7id5QNwpZ1D3gK3EuLFBIm45ycHnwdaQ2HKJ
         ybV/12CbVtN6vKL8HVFirof7nvzi91PMEsJQJY56ROSI1+q+GmsLszw/0ZvHZ8T2VF3m
         W+ae0T3b5Fnt4Gs/N8UQDvY7Un3sgM3jfhdKTgPhgFmJCybQ3/a8/wHqk19hKue8o2e2
         IuUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=ozIvQY+Ezb7E9wGz4iuDzoAKZloBV5+bVq8XpoQ6IjQ=;
        b=iLjdmGRwqqejHaDY2JxKHIhbq6Pgb0dbOsPV4XIQimnul2rD/t2JDwpkhvu6wohmOj
         b3UvlAP1quz353HlGJn6xBjZldpEfqe7aXdBQb7ebFMLVVrCXC1QAZAJQvkOxVTZTcwr
         WREOnI3wcTjW8/AMC1APhXpv+E894ixqfzmjCvxZp53QjNONsFGPC7wI3cZSfLHc0qt6
         e+ri/TsUYnA2SoVcHnI8tKMzO9h++gRm1uYfQE18DocOuOeUlQ4LQWTo8hnUjuJdkJ9z
         QnCrzptwfiSEKiKmTsAb96qedR9NHdmSjBU0fMUTcjJBDJL0NCGLNrF7wQUQExmvK4rr
         gdSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JkWCm2Oh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id p6si619456pfg.6.2017.09.09.19.34.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 19:34:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JkWCm2Oh;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q76so3342041pfq.5
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 19:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ozIvQY+Ezb7E9wGz4iuDzoAKZloBV5+bVq8XpoQ6IjQ=;
        b=JkWCm2OhQqOyQDxnvVZ8UzS0pCl+YrMlByxCWQ+8YLhunuM9RwJIM0bo+kgsPOf9d5
         P31dJx+mWVIHaRXEAgxHLsQl2VwQ/Il6FGKnJu3DC0hCoP372YaDz3WTNKiHybWSvLYh
         TnhKHM1ZAl8mKf/kuiz3D13fHshHH4KALUIv7GkPoOOc2+qDK6DT9eNKyCm9N7e3luDo
         11eZvAnZDwGgX91+wQG5fGPRZD1Z4Cxc3G21hBWUkz0tzJKQz2eSjq8TBeQCQDeLQVKV
         n8gkTtWl3TOniny+HnIBrTc2ZV99JwNojsmfW1dmw4NoCotyeAbxggNwvnYqzq/8rGTU
         K37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ozIvQY+Ezb7E9wGz4iuDzoAKZloBV5+bVq8XpoQ6IjQ=;
        b=avoupmOAdq86Y2cm9mFdQQcv8PMCF1imyqpOM9cz9hRdWu8KPzTU9lnKjHy4uxqBDB
         avm24evmJfv9KOCUZDNmytU5UskDTFnJ0Xh8kpx/xaal/0iP2iL2Ygv6FMUjUvC8tPnW
         GOYd59Jv5hLDijzvj8sjwkrxhdtEtYy+RjP/8skFBF/bZep+p3kNs5zrPL+kxV1z1V6f
         Qnkg3jAvpcxLx01XBLZtmU6N51f6zYcZDiAIQu3cD/F0aTqsha39HJxXPIBhuvboKNea
         4/W2TpSAthY78Juqy+hbFKRbh+KHUCOzgnE/3P23bhVKTOo4bl4uu/ELVs5v45tXA3s0
         wHyQ==
X-Gm-Message-State: AHPjjUjFKeRJZOurdRC9yWv6ivwGnDmtjINGCmxksmaqhZoWvJ3EjL6v
	CU2Qnka7+yw4ww==
X-Google-Smtp-Source: ADKCNb6uWl4lzk6gWsaBC3lNJnQzM4vSx3faGfeUXkTY2hWlR3MkjkeoogGJuv0LvW+ZOKop02XmDQ==
X-Received: by 10.98.10.24 with SMTP id s24mr7751201pfi.155.1505010880073;
        Sat, 09 Sep 2017 19:34:40 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id u8sm8139512pgq.52.2017.09.09.19.34.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 19:34:39 -0700 (PDT)
Date: Sun, 10 Sep 2017 08:04:35 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: [PATCH V3] Staging: speakup: Replace symbolic permission
Message-ID: <20170910023435.GA24707@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace S_IRUGO by 0444 in module parameter declaration. 0444 is more
readable and matches the style used in other declarations nearby.

Problem found using checkpatch.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---

Changes in v2:
  - Make the commit message more clearer and the title more concise

Changes in v3:
  -Mention the changes below --- 

 drivers/staging/speakup/speakup_acntsa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
index 0e10404..4331584 100644
--- a/drivers/staging/speakup/speakup_acntsa.c
+++ b/drivers/staging/speakup/speakup_acntsa.c
@@ -136,7 +136,7 @@ static int synth_probe(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_acntsa.ser, int, 0444);
-module_param_named(dev, synth_acntsa.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_acntsa.dev_name, charp, 0444);
 module_param_named(start, synth_acntsa.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4


