X-GM-THRID: 6466416490649223168
X-Received: by 10.129.166.81 with SMTP id d78mr18097090ywh.181.1505579913154;
        Sat, 16 Sep 2017 09:38:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.189.2 with SMTP id x2ls2678871ite.19.canary-gmail; Sat, 16
 Sep 2017 09:38:32 -0700 (PDT)
X-Received: by 10.84.141.168 with SMTP id 37mr11338105plv.27.1505579912403;
        Sat, 16 Sep 2017 09:38:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505579912; cv=none;
        d=google.com; s=arc-20160816;
        b=0eK2tXqhGbVnapPUjsqgMwB/uDG5Cuuq3ty8HQJYDrgDe1VWoCffLtd8OxRmgt/s9p
         ntd0Xi8wV7/eNEyeIEFrdsDiAOARWdBBjq3yRUbHfGRrAyUfioOPn4Vwl7JuLZXJBToC
         QjQWU8AWcMUH+TQH4gztaRYF5NlwJTyt6agxOrMIVxb3syHtvY1i93m9utKA+M22waw1
         ATV7t1XI+6cAHDnpACpn3uHNQmwRzGY8fn1suNTFxfLlnLjguwKaXlsI8Mk8TLeSO9jB
         jOcHwKGbLY1F/T9d+SSagQoTLZJ16TZxT5LMaH6QNTp3bMfrd/VeLlpuso3r3dvwcJTS
         +OTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=yco2q702jWs1EZLJwJOX5dNkz3R89UfG24myAw91Pmw=;
        b=wfqJ9SZM6uBzecLSbcZiDXDf/kWzGTDYBYD8o7QbH9H/jMPas+X9zy/7czdwwa1L8n
         WrD/j2kRwkMFPPS7nkU4R5BVWwMIEG/DmjHAm9wUoe4f1AiBCkNaKgkQamXvA7gXitLS
         6JyFeANJCdi0XcjWkaDF+tAShap8EYioYX04yPOj7IBN4i1EC3QQFL8/w1ivVtkvnbrT
         P7U12lONOKO+vpxb1vc28dGTELk54/Csd5p35br2RQo1MusZVOlOZYoHTs2N0Ocf+gWD
         GxvpuMlJ5wTScBxt3XK4JeDROn4CUZLt66fW4T4AjXrE+w0WRNiiLfO2PY5eKky1Jd6q
         Z/gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WoDhUB29;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id q65si354787pfj.8.2017.09.16.09.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 09:38:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WoDhUB29;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g65so2675139pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 09:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yco2q702jWs1EZLJwJOX5dNkz3R89UfG24myAw91Pmw=;
        b=WoDhUB29bC1Rt2BIHo9Cvgt3Y9EAXPJAFz5UPZC/kiJ4k4cTVazg+kEvHfMzbePXuo
         7nJc4ceccz9GFTWlBAlqzbQLuZwIs0JZ2jzE+Ucagr98YNb19+wETaf6t2kCOJ0BxXGu
         LMi0H1Oc8xPU/d0hr5svAeJUMa2Pm2PXel2lE7j/0T1hzpR0a266fBEV0eNsW6rxbQS8
         3GNcMaiMEcAvlWnwI0LSMsBWddxicS+ulh+SxfBWciNyg3Od9ShEv7ePJII9JDByD/9m
         Yl2jYABRlzO2Fb/4XEhA9PtMbkddmvwpX0BvKOKl2mllgBsq8/fw9rRwu4cp9Xx96TKr
         AS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yco2q702jWs1EZLJwJOX5dNkz3R89UfG24myAw91Pmw=;
        b=sRHlHNnF+GlvNsk+tHOorhM0hZnqC6tuG1xu2U5/eNTKpfbwWA/944ybiH67ZPWyi4
         KiF2l+ZtrtCdQ+H3xEmIFoJIhr7LvcYHERJoyFCPqYfmAw3yibHpeSc7gl8/hhRKIzjN
         N9k7seuRRPa1sCNZcJtpKYemHxesPgFWDFxZs8+Pe6psEv6R/5a3JAyR8gAFN5Nchv97
         UmziX8PQy1HtqlltURYt5ftGP81fvDZOCWsdokXju8nKMi/Lgh80tDQ0ev+mNOny6mkC
         N2o5n+EHiX1kZTMzkf7QRJzcb8GikPT1pT93iA4B2GNkWOGdsWayyZnaSEmkV5fVGQtH
         GzIg==
X-Gm-Message-State: AHPjjUjuXRpvTgl62Q6IqGU0Xwbg0sEWf0+Msu9SiyV26nTNTmKxJOlp
	UpEqQb/UmqqaXw==
X-Google-Smtp-Source: AOwi7QDZtrL4MLcbf9IdtqVfK9UAR6ACXCX7UohrbQtzKiSNeN+5bNT/L70rhkUjbP9f8f1qu57ktA==
X-Received: by 10.84.252.152 with SMTP id y24mr6453591pll.1.1505579912178;
        Sat, 16 Sep 2017 09:38:32 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.15.200])
        by smtp.gmail.com with ESMTPSA id k82sm6944409pfj.66.2017.09.16.09.38.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 09:38:31 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: lidza.louina@gmail.com
Cc: markh@compro.net,
	gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2 0/2] Remove unused fields in structure definition
Date: Sat, 16 Sep 2017 22:08:24 +0530
Message-Id: <cover.1505579408.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove fields that are not used, from structure definitions , and 
eliminate the comments associated with them.

Srishti Sharma (2):
  Staging: dgnc: Remove unused variables in structure definition
  Staging: dgnc: Remove unused variable in structure

 drivers/staging/dgnc/dgnc_driver.h | 15 ---------------
 1 file changed, 15 deletions(-)

-- 
2.7.4


