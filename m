X-GM-THRID: 6465168256299696128
X-Received: by 10.31.162.7 with SMTP id l7mr9284732vke.108.1505289286873;
        Wed, 13 Sep 2017 00:54:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.69.1 with SMTP id s1ls2515350ioa.32.gmail; Wed, 13 Sep
 2017 00:54:46 -0700 (PDT)
X-Received: by 10.200.6.5 with SMTP id d5mr2476446qth.9.1505289286082;
        Wed, 13 Sep 2017 00:54:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505289286; cv=none;
        d=google.com; s=arc-20160816;
        b=Lt2VMDtN2ZGADYGdFMP0Ecq7uvgYSFC/wVnb/RcFzhQw9/oFKzCXWxXxf6Tch7cbVJ
         V8YUiZ3HgI0UkWf8OQlLW27WTgq+2IKFcJ+Cx+7nTV7h4/duTaWEY0Mw7QsU44U17jqA
         4k+pBUBs5xPJetEs/XkGFOAVgvN4SvQGsPbw1yqQYbbKNMEOhYF9Ty6zYWSB/MUq88ti
         npcVR+vRKv20SJ+Zf42af7xd9bZuR6awfqU2+rtZOG3CxqCprWFkCfDZQKw3l1Z2WoBN
         n1qXwhp2c6WaYNejkSveL7oq3T8Thy+BSoPBVNeQ3UGQW0Flb0MK3ELmwFCf03+DtK3d
         KHPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=Zn5axq+ixQXuf3n8oYidzibxOjhi0Bjxl+ov0Ie2Fxw=;
        b=ITVcBtWIDHkZoKqe9Wo0rWDanqqDS0HZ+OILMwqGLppb9CH414vnRXTIMrkeFUpcaB
         /IOtll2W+GubKdiwt64Pr2I6ymWmd38GGYk15zo7TAZYoop0fzzrjqaAVLpf+JDWk/MY
         xa5OzfBcA+i2OEeN5DGU4pIiSn2nFfYWzevfxgfqHp4VHLPJ6aa1J6HOtEyEggtb8wxs
         T/8/s3sZmYoTK5tgzE1+hCpEwTucB5AgDlU6QDu+HuqZfaIBbB6tZhe6e3vy6kMTO1+2
         LwzpCnkyCTTQiJVxhv6alwsD30TRQZMhePnVI8t9h+n0IWTgtTFGFDJvhGdZxTF6C0dB
         dldw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W2TlzKNS;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id t84si430445ywf.14.2017.09.13.00.54.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 00:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W2TlzKNS;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id b76so6972495itb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 00:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Zn5axq+ixQXuf3n8oYidzibxOjhi0Bjxl+ov0Ie2Fxw=;
        b=W2TlzKNSEzJkRyjkueIBNtxCAiunn7Aw82fzPSDXgitDHznOvTsKrGN01ZsSzUPExY
         tsHjeWrkS9hv9n473y+SRm5TaijYKdGq5rLb815D0d/HyHKr0eqcZGQtlbi46+R4Y8Wu
         NYPwWuiDkcSTQT2fNDtdKG599mlGM2gy7bKOxUOEKNpcecS/QFoNNyY8CDPcjyqkacpf
         Sol3zMYiRTp6bAmI6Jm4FGoN8QAxHJIlNNoG8tYOnzqTS5XgGUvG/N27kuQ1YgFCID3b
         Ji4wXDnCT4ZQyBeeMf1dnGnbl/UJHE2XanAIhJpzATuHrZ2J9KKkParcMpzsluvqCNzx
         pPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Zn5axq+ixQXuf3n8oYidzibxOjhi0Bjxl+ov0Ie2Fxw=;
        b=Bd1FhRKndwmNo/1hdvaGYt3fgOr12UxbT2oScCPkC9/lYWENqI9eRsxgip7LZAC8NB
         qtK0ec4+PMObpEI2/5OM6iyjOI957YoMwziHne73JGdGuedHWefzc3Ri3+aZltaJ5uO3
         rQMYm3iRxotQiaFfRAo9gA6s3SgGZwyARBUY6JQS7oH4SjoZ3AZ5y0dDGCV3SazG48xl
         c/3GhAIS8HcQS35ou8G3fiZ/PJJ/oC7eablcjfsfJl1QbkVc2jy4dyV2vwkRkZQ/BokN
         XKicNuJ1wv5YDCAAkjY3A8d50JP0TIXjYlzRJpqeDV19HDvcJZ4njVkks+TnWia57nXL
         l/8A==
X-Gm-Message-State: AHPjjUhZz8xmfVweZ6ljjFaWzsxhAmGj+LoJ+BABvqi2j1PwuprgPu9p
	KL29h03UwN5feJldsx8=
X-Google-Smtp-Source: AOwi7QAsp+EHZCXut4nP2+HJt88JAnvSMRZDjhgTR1r/zaaDCeEntWfWMg+woMSVSUuuMqoPuh0gOQ==
X-Received: by 10.36.107.21 with SMTP id v21mr3117864itc.43.1505289285319;
        Wed, 13 Sep 2017 00:54:45 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id t127sm6877928iod.26.2017.09.13.00.54.44
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 00:54:44 -0700 (PDT)
Date: Wed, 13 Sep 2017 13:24:41 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	daniel.baluta@gmail.com
Subject: [PATCH 0/2] Rewrite the IIO_DEVICE_ATTR_NAMED API to pass name as
 string.
Message-ID: <cover.1505288677.git.himshijain.hj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset is to rewrite the IIO_DEVICE_ATTR_NAMED API to pass name
as string.

Himanshi Jain (2):
  include: linux: sysfs: Add __ATTR_NAMED macro
  iio: Use __ATTR_NAMED to allow passing name as string to
    IIO_DEVICE_ATTR_NAMED and change usage to pass string

 drivers/iio/adc/ad7793.c          | 2 +-
 drivers/staging/iio/adc/ad7192.c  | 2 +-
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 include/linux/iio/sysfs.h         | 6 +++++-
 include/linux/sysfs.h             | 7 +++++++
 5 files changed, 16 insertions(+), 5 deletions(-)

-- 
1.9.1


