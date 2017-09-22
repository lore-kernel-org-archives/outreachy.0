X-GM-THRID: 6468559183298953216
X-Received: by 10.129.174.39 with SMTP id m39mr6769208ywh.218.1506078798196;
        Fri, 22 Sep 2017 04:13:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.39.70 with SMTP id n67ls1479670qkn.11.gmail; Fri, 22 Sep
 2017 04:13:17 -0700 (PDT)
X-Received: by 10.200.35.136 with SMTP id q8mr5971740qtq.40.1506078797675;
        Fri, 22 Sep 2017 04:13:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506078797; cv=none;
        d=google.com; s=arc-20160816;
        b=bbLjVZTUfuz2MUn0U+q/1/Z83WdrcjD0s3TKmI35lDMv+lPiQKv166PU0PChyK/yln
         zqegC72YWO7rIB/L91fWcok2Fce3rphS/Ay2y2GXrzmjO1VSSbzWfz2FkreooxjLtYuK
         u5uEHoJ0M6npmy2fC8iLWgtGqm0Ns/3QnoXZZKEorMNHyZh6P+6R/ZKjqgsDNYlrknay
         HPJEP+PXkWvannGsjvwmY7E3BEudeV2D78CnFKk2Qa4gkAihkAiaj56ZzAL7FyCGjjaj
         NkQQ5MdL9M4PNdm9ucnuENv155CbwPFf6Wc+WzKs3aTnV02yjXLglaGzZAuBYUDDHCn+
         NcQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=lyU4w8ZWsKvtRaH0gRoyObsjBFwJoC+LXSsDh97YSBY=;
        b=KmHW/0mudG4OTzvDmNDtQ2ArVLqla29yCI6Fas6UwBUQ206b+jz6lA1MJD2yP+0OVA
         bkFvYT7DcqSFyzlarjlNBO3ZDoCZSl520D1xmQ3xXXzYx7Y62OWl639MjkIki4+pgFQy
         qT6OQT0Wy0is35DSkTdS4Ga2z3CZij+zoeAyd2zR4P4xqHZFeul8C5/FKyq+wFGK7sXG
         3j3xscVzvlk3sTcKvICkHcSYLegE3gx42mb0JVM5omPlkCT19XDnpf6tEKyJYT9VBfNA
         Ltj9fPKKX2ugz5c6yKCZsXD+zsSPdAM3DLNwFQS4C5wSXKJ20AF7iM073s7VXT+U98xQ
         c6hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PEtxQ+XI;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id p73si205036pfk.27.2017.09.22.04.13.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:13:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PEtxQ+XI;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h4so342414pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 04:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lyU4w8ZWsKvtRaH0gRoyObsjBFwJoC+LXSsDh97YSBY=;
        b=PEtxQ+XIUHq8iIxAkSMh4WYLzb9EeI8bAwjX7d4QaJRUVO42zkWMD2LtQDPoWD6zLw
         Bcy+kW3JpOl146pTpsDUyUyzCAIOsgDWVmOf2KbjWAhWKWPBdJ/ZguEvWitwUxpNKk+l
         Q1qocRjpgwyxQxHhYVeqXWOicE/OgukPbhyouvOMhUMyDZvVFUWoUsXbkRo2Zr65IVOJ
         eETG1JZw09tx2IAEoHnzcVvcxwnYwwwS0zbtUqATeWzA93QJb4wUUwJXShjKNob7pHi3
         tKK8f05qqWoeTaiDCpg6oFrNO5JUKh3Z10oBLJIT0cS2UPJkxjjXj/XIU3oZ0+cS6d8h
         YUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lyU4w8ZWsKvtRaH0gRoyObsjBFwJoC+LXSsDh97YSBY=;
        b=dLFbX77h8MyB1ibXg7WizGrtGI6aFidgZqZVd5/jGUS/MlqHAMUzL1knuv5p+cZR8p
         rfn4tMNfBnciIB50nMzWqHbB5+cEAYEIVRGMWUmaJK31gOZet8PTBn0llShEvp2lfwis
         V9nPPYIcaW/R0JQjFRdzlDOCGsgLrCLiudtySHglEqsiuC6Gj3ZE57Xxhpg8TOncrwuz
         Uyf1dYuM38ckdC6SGDdH+cB+t0JPp1wFimq5+dODX/V5x8Fs556dThaGiMwvBiUeDjnG
         T5InxcoRJCW/yPjY+StqTzkTKP82/GLMmZmfW7gDjstlRsh2/SsdhKdQ+KOtkgOpcR4z
         Bndg==
X-Gm-Message-State: AHPjjUiHFclMKAxJ6W4RAOiyPISBcZJhgVpAWNAcz9FwPHs8BlG3fbJi
	tvizPQtucT7tSXr3L5t3JNo=
X-Google-Smtp-Source: AOwi7QBKbjG3owwLTvGvqm94AE/Jyxio/PPg1f2dfZHpmd1YV02SPAH/mWsJqaK+IPXvn0iVwFX5oQ==
X-Received: by 10.84.160.200 with SMTP id v8mr8739468plg.9.1506078797401;
        Fri, 22 Sep 2017 04:13:17 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id h10sm11170728pgn.73.2017.09.22.04.13.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:13:16 -0700 (PDT)
Date: Fri, 22 Sep 2017 16:43:11 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr
Subject: [PATCH 0/3] staging: rtl8188eu: perform minor code cleanup
Message-ID: <cover.1506078496.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch series performs minor coccicheck and checkpatch cleanups.

Aishwarya Pant (3):
  staging: rtl8188eu: remove unneeded conversions to bool
  staging: rtl8188eu: remove implicit bool->int conversions
  staging: rtl8188eu: wrap lines in 80 characters

 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 59 +++++++++++++++++----------
 1 file changed, 38 insertions(+), 21 deletions(-)

-- 
2.7.4


