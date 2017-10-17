X-GM-THRID: 6477977779126140928
X-Received: by 10.28.29.8 with SMTP id d8mr537260wmd.27.1508271735498;
        Tue, 17 Oct 2017 13:22:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.142.208 with SMTP id q74ls684305wrb.8.gmail; Tue, 17 Oct
 2017 13:22:14 -0700 (PDT)
X-Received: by 10.28.150.6 with SMTP id y6mr515332wmd.28.1508271734510;
        Tue, 17 Oct 2017 13:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508271734; cv=none;
        d=google.com; s=arc-20160816;
        b=B9uHHwfbvK+vDCjMqdwPsirHZREbwP4Sajp1YOhUlMA8zKRDY5pA4Ik6wnL2mpxBx4
         4nFiNqUFyG3gwaHlzhR9ehEeBaomB8mnwk3KnLf0QOkW2rwwvJGQPgjUdMwMp+6MZYNk
         mwSBR9BaZXqF/R1uL6lEFO8t/nlpzXqJtOhinV947N1LWkt2bQjaRx/mhQVNj4p7SAhB
         0H4SfK5Fd4S0eJYe3HRH5t1sz0Ge2KlQuz4nvIH0Deqka8Ug+sg4lbKnNJY++pBfUfhz
         g1Gncc6H5ZPw1sz1Ds2lLNTv/NUx5iitQ087YjXj5fik/MZB8IzenyNed3O7b3WQBJkM
         JjYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=hoW3dkum3wVPAxOZVvz2/0KCPKhIEvT6R4vmL4gGGek=;
        b=gxupxC8iVDSd+A9VEOkyS2GxpbV2rTAgOZdbOScV6TblmXcyC85/pU8kt0/Tjztups
         YbWsgByoG3qbuyWDd0PRTGZG3260j+cky/3Gc7rFvv171tEr3dLmONM8+WLdwy88Diwn
         7Zr1vu65traotf4B2tuLOBRuSEfGGUtX1g+MNLMLswdWGKQbW3RWtEjCBPLaWhOsUqHa
         PlJTIraWTKEcQoH8C9GMwu9N4RoT5QUmQfzeMGOEx7OgZXwM+a+nWhYo5iNYtUQwbbqf
         zYeotFR2Y8ea4A5SLTaI3w/WN9oTxrjyUZ0vkdd3HA6G3/e7q/ggVD9Ozy1mFnfyFp6k
         6KeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q7v2JQnp;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id l9si542970wrf.4.2017.10.17.13.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q7v2JQnp;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u5so2939924wrc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hoW3dkum3wVPAxOZVvz2/0KCPKhIEvT6R4vmL4gGGek=;
        b=q7v2JQnpJD59lh02hCS/JHQlg2KSpE2NYDztZsL6zxWxCfLPOvjaIxlDB5KSFd1biq
         ai2YILvdYKyiMHYt9DGSSJ1a6Ibd9gP7zZPlbG9tNt89g54lm5Sk/3vaAb34TIG9GbMJ
         HQDeqGcOB91jglTELgNpTmniPwIjIVtR+o0rm0wG9Z3BtUENvWPUMeChxnOI3G05KmUv
         AinRtEuQEFOvQ+4m63g2OhFYuoj+snI5uYtb+ZnjJ19iskHd2Ypx9qQ8+zewSs224yWu
         SHRviGwhrg1JhsYbNA00GZXI5INfXESx9hpPa+q/A0FupWtRLFzN06RFgYm/uCN+05//
         v/Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hoW3dkum3wVPAxOZVvz2/0KCPKhIEvT6R4vmL4gGGek=;
        b=ugd0w8/LSU1cyfg7IgBEs1CEuUJe/aXz7s8Ds9ssNdNqiCqhMhbMBjksu+gVCDpvr/
         s2HnLwfYZDpyhCSQulJTLZVGU706W01He1iqv+Ih6x6H7P6vndnp0eA0CuW4wIyRgr3Z
         W7kI80h7cE3EdPr1vWmxcIlkCejqB4CnK04xpN0/OliIQ0OksGhoayGm82vIIWtXoFq+
         Xg3E8MkxM1BBbyKcyDqD9nFuYugxbQtthC987EaiZfRJ6X0/WPJMtbUjHkl+FWPbCddx
         q7cOqEYW5fy6PwsFbWgiGo0kiC9vG674RxFhedgApaiW0qptxVQJYkEzOTamqshMKch2
         z/KQ==
X-Gm-Message-State: AMCzsaW+Zaldx36druBNEKAXfWX3COQsl0erl5xonpnqW687Zv0qdTMY
	bUR32iNan0l1XAREPo9kyBQ=
X-Google-Smtp-Source: ABhQp+SwoTiGFV7e/saWPqRr+s5KhUVdFPRA882d9Y02M/QRRJRg9Nqnt2315jEER54HXo//XjnFiA==
X-Received: by 10.223.138.231 with SMTP id z36mr4932440wrz.154.1508271734291;
        Tue, 17 Oct 2017 13:22:14 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-79-238.residential.rdsnet.ro. [5.12.79.238])
        by smtp.gmail.com with ESMTPSA id o76sm7614622wrb.48.2017.10.17.13.22.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 13:22:13 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/3] drm/amd/powerplay: Fix coccinelle and checkpatch issues
Date: Tue, 17 Oct 2017 23:22:06 +0300
Message-Id: <cover.1508270576.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

The first two patches fix coccinelle issues and the last patch fix
a checkpatch issue.

First patch: The return value of kzalloc does not need a cast because
the assignment operator will take care of this.

Second patch: The 'result' variable does not change its value until the
end of the function. Instead of using the variable, return its default value.

Third patch: Placing the constant on the right side will make the code easier
to read, as most of the people read from right to left.

Changes in v2:
* adjusted the subject prefix of the patches
* added the cocci script used to generate the patches

Georgiana Chelu (3):
  drm/amd/powerplay: Don't cast kzalloc() return value
  drm/amd/powerplay: Remove useless variable
  drm/amd/powerplay: Place the constant on the right side of the test

 .../amd/powerplay/hwmgr/vega10_processpptables.c   | 35 ++++++++--------------
 1 file changed, 13 insertions(+), 22 deletions(-)

-- 
2.11.0


