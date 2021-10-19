X-GM-THRID: 7020739860072759296
X-Received: by 2002:a05:651c:2117:: with SMTP id a23mr6695786ljq.34.1634643380488;
        Tue, 19 Oct 2021 04:36:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:1a4:: with SMTP id c4ls1697138ljn.1.gmail; Tue, 19
 Oct 2021 04:36:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwTza8CTBOZbYR4KDRTnG18Tjo+/DgJ0/9dwQ6jLAdoQF7P2o9gDa2wtsCMV6gfYzi5bWj
X-Received: by 2002:a2e:9dc2:: with SMTP id x2mr6176346ljj.253.1634643378883;
        Tue, 19 Oct 2021 04:36:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634643378; cv=none;
        d=google.com; s=arc-20160816;
        b=ngVmN8P57ymMQep5POod6dm8I7Fr6Mkp+GzR+dLLeRxzGmIfqgiE0VO1hdd3pBVVrE
         9UyOFPlKPYvRHdFN1KGMcLITxvmUJ/2VbGEvRt317utG9xICdJs1RyCsIIli6MQxgNYn
         U5oPeexcKvf141lf/Xbce4Kyh6TM1pnGuIiycJcrWt1O8E4onTLxvw2PUq226DotNgKt
         9zUDfUnbgb+7ah40sPpYBq0o3P6BO8I1rgr/8/krdMiBWaWTq8uLZqk6CDb51kMrzn7i
         CR5pMYxYIYkHBSUGkDTcgLE+DBOYHQPbRB0FkWUvPJwL9xYhpY8yepDmnhLhV3tG3Ah4
         g8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:dkim-signature;
        bh=dmQ4p+9k0/VAIZcWaLtbWUbQAZ5bIxXKoJmA96wTtQk=;
        b=reaRuqznlKI4a6V4r7Y8qgH/lXpPpBw7cpvXoZMm7ekugc4yMD/a1jVzpu9KLR1nad
         evrJLYJZ6nrEJcR6tlsFHNJPCQlWk1NICpxJjc3OjmMoQ93OGdr8LqJCconTPVzxbBf2
         vdQA2Atq+VX0gfESrcoVTpQqmXD8kOc2mfMDOq0Dm783mRCsSy/uC+W3s6Ey6JacApxG
         gWsgKzggk0/OQFYQIX1IEsOFkYKal1j8gHBcatob7tB/EI42GYAP5787uH9xb7xHtuob
         wS8vW5FlNCUfr5mQOcnfHYBDxal5LcyOziXAoW6TYI7Mm7aOChMCmRhZEgV3cyijhrCJ
         iXcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FQrzB79k;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id w6si785954lfa.7.2021.10.19.04.36.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 04:36:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FQrzB79k;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42b.google.com with SMTP id o20so47273763wro.3
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 04:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=dmQ4p+9k0/VAIZcWaLtbWUbQAZ5bIxXKoJmA96wTtQk=;
        b=FQrzB79kK3CLZBejE0JRCGS/WUdn4UMzMGMvtbxkhdDGgJd4JqJldLKPaf13+F/Lwr
         sJHfM426CD5qD549j9TBvJ5motd5upx1VBV/s7H6xoOxf4DYB0TJlDT6zjpMoZ+CnKKe
         PLNkPbuZXRwnwP/7rOEq1RIa6iRgF1rGnJxtyvfwa75xD0qjHTSjfqvo19pp3s7SLKhJ
         +QKT5j5AeCvsqqZ7yb3aWujWJMfBpUCG9RjNNK15thtyA34n73y+TFU/d5dhcCMEU4Vr
         uu/ljE0tzS3cEPxwu5PgU7H/hzF9h9GFUGu1htitwm1z4XLn+g/aygUScjjhz2zXcJm2
         E3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=dmQ4p+9k0/VAIZcWaLtbWUbQAZ5bIxXKoJmA96wTtQk=;
        b=YCCObYeEiP3L1F2xZi0B+nWjo27joAPIHwERv1rV7oWfjxPs/ZtVK0UB0Xdyk5SAgw
         7B/r2UbBQdHl5CcpaYEWN6hZ7P0Nq3J0SBlGT15ugb1RQIG3z9l1/2iBA6OQJNrvqFgs
         2thigUNa3HeFZDF7MlBEJ2Sfe+wcQ7QmdX4PaH4xujE3Lx/36A8kQa27r3Y9hZh1qDT7
         43H7ZDygDvJOMG0bDRJSgbUa6f+02P6JB7L9D6eLJfbChTZ156KCJIhbwU8yqLZYNk6C
         O4gt66eQEphU5uSAZoVg+qz81iiF8CzPwTDXbvJ945lRjeL21CUg05HFS5Vi8qb44kcf
         MI4g==
X-Gm-Message-State: AOAM530qbHvK3ri1odpEmNpSvSCVeZ3TKzNv+PcpDt/meohsbxJ4M0ZC
	JbczPswlAyPVjt3ou7oehkIDqpG0IHQTSQ==
X-Received: by 2002:a05:6000:1204:: with SMTP id e4mr27839050wrx.269.1634643378404;
        Tue, 19 Oct 2021 04:36:18 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id f6sm1870183wmj.28.2021.10.19.04.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 04:36:18 -0700 (PDT)
Message-ID: <cc6aa5185aaa3a4db3a5a6f11032f37bfa977362.camel@gmail.com>
Subject: Inline comments and the line length
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Date: Tue, 19 Oct 2021 12:36:17 +0100
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi,

I'm working on tidying up the vt6655 driver and I can see warnings
about lines with inline comments that are too long, for example:

```
CHECK: line length of 129 exceeds 100 columns
#171: FILE: drivers/staging/vt6655/rf.c:171:
    0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* init
0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */ 
```

Is this something that should be addressed or is it ok to leave it as
it is?


Thanks,
Karolina


