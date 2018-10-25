X-GM-THRID: 6616381756005154816
X-Received: by 2002:a81:7c88:: with SMTP id x130-v6mr416533ywc.18.1540496422063;
        Thu, 25 Oct 2018 12:40:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bac5:: with SMTP id a5-v6ls4383444ybk.22.gmail; Thu, 25
 Oct 2018 12:40:21 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cN6KBV6uBzEGrV6fHF2aYoVr6PfIYKiEh0uuCr/svgwxCJHqL1Eki0GQXDWqzLYCTtP3k6
X-Received: by 2002:a25:b809:: with SMTP id v9-v6mr421596ybj.2.1540496421047;
        Thu, 25 Oct 2018 12:40:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540496421; cv=none;
        d=google.com; s=arc-20160816;
        b=esYvfWmXuFppY3GsESGl3IqkMQU8DVsxjgsriatmM8NcE9O5GhWC2+i+VfqALysgEb
         svHt3XvfzuwiBSnFCYd8hoVetIFKBMTC/xl75vSHyLiOaeO5J+Ah/asw0QezuO65IMXf
         Q2kLD94bF/9JeLhQaQpwm4rxmN8KqIs2WNWQDG1sbVRi7QKpQ9h3VLvJMbG+vxdRGrrk
         VKHfooKZch5S3n+IvTRmCiKPvx7KeO8CeDmGiM8IGoB+XlRQJ/z+DSuQg7v1AokZuDlp
         lRET9dez5oX7e7xOpuHVmVUWyWTMvPZ9yBUyfLfrmYlVvNq6iUM2JfWDPPL2oq4jf5t7
         v8FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=lbOtJ+IXTmF0J4dzVxEShHiifrkDS0lzDb1R83v1wrE=;
        b=ZerGRYZ6BOOGbKYth9n3GOYEwdSzlgmJIOzWdH0tiTAWU+vwOxPtXGDLY8QJZCAYGm
         vyRtg28isuiBcAGXLs6v4AXysW5N9pjsfineng3oDVaFf5tsGeUiLGj2LD0fNM2SS0Em
         1jqx89XAre1JdBrMVh+MhN6ZgTYKcUrc7RKYAn0nyX0qBRvX+kvcAgrPN6ZdqLL8qPNo
         YLyoOOOHBWCkWoqTfzFFOMZJNOGAV3PMroJp2Wf/CFnEdhXtCa3gHgKRgDtzuU8Vg7ak
         zybbOYzG3MGn42G2HuzdzUdaqhJCOqXoBWbDAtRWSzlmM9yTakb1K9pMcUnmaAjXoqaL
         piQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tS6HZsi4;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id 192-v6si333981ybv.0.2018.10.25.12.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 12:40:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tS6HZsi4;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id b22-v6so2307557qtr.11
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Oct 2018 12:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lbOtJ+IXTmF0J4dzVxEShHiifrkDS0lzDb1R83v1wrE=;
        b=tS6HZsi4Jrqa7nA/i3rhsefMxFHwVswXw7i6NWeg5m8OAzD/NvZ+vAuC9yYwmIbp/o
         wjO8wepjnu1RFURvXgk7SW+YkznE868KtnlExbf8GujOn735og0UkWjZnz2BArB4ibZJ
         KY2Z41XypQAbpLwmMihLM1A7+U4hrm70ZliMN1j9RP03+zH/2RnvmPZ8HaKBZmAARGE5
         k99xOxGn2cC7LybBf0jbd3AZdATMlG9LFplvMfkTlp+wc9DYZFOHfNYY+QC3D+TQded+
         TvjbjfaCN9pkArA1wu1oeNK+euJ+dggaKrrcWfMzw7LQBRfof2xBGxOJ2qwY4QjIeINs
         FUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lbOtJ+IXTmF0J4dzVxEShHiifrkDS0lzDb1R83v1wrE=;
        b=efS/tBDkbQUpXR0sy9FuPdntb9FISDKC76jpfWIpcSNKac8j8fpM9pBYRuYkU5E7c5
         mIl5kAO0xvZdef6+wPLu4rsLdWVb8RnoBkV0PmRLVkR4V8kH4rYUCoZuKX0I/G1Cy+4B
         1vPWEQ8txfgtyieWuH1CJjntvbejTlfAJ1f9Icb9j0HApyXrHU6jBQ66wCTsMt/vbxj6
         3kAyLV25XbvAKZvsc2/bMk76Q/+UORE9DzBW9kWjObs8MFLk/IfY5Vj6msPToL5Ou75k
         TBjO13iMZyzcUS9m0X8Edc+QrhMacqGVjf/94qRIHlE6GeuTZYdJESFtu0169kZRDVzU
         IFBA==
X-Gm-Message-State: AGRZ1gJ1TN3/zw/Hi6gYWEbjgz+zWyrNklJpn7h/S60m4NTSbFxQ/oL7
	bsBTQfLPfgOnGnzUADFENX0=
X-Received: by 2002:aed:2ec1:: with SMTP id k59-v6mr584811qtd.304.1540496420658;
        Thu, 25 Oct 2018 12:40:20 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id 83sm9583078qkz.73.2018.10.25.12.40.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Oct 2018 12:40:20 -0700 (PDT)
Date: Thu, 25 Oct 2018 16:40:15 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: vboxvideo: Remove chekpatch issues
Message-ID: <cover.1540490962.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This series cleans the following checkpatch.pl issues:

CHECK: Prefer kernel type 'u32' over 'uint32_t'
CHECK: Avoid using bool structure members because of possible alignment issues

Shayenne da Luz Moura (2):
  staging: vboxvideo: Change uint32_t to u32
  staging: vboxvideo: Use unsigned int instead bool

 drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
 drivers/staging/vboxvideo/vbox_mode.c       |  2 +-
 drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.19.1


