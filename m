X-GM-THRID: 6949552680450654208
X-Received: by 2002:ac8:664d:: with SMTP id j13mr1782881qtp.196.1618068823272;
        Sat, 10 Apr 2021 08:33:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls5148077qta.3.gmail; Sat, 10 Apr
 2021 08:33:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4an+Sp8tOtgazP2zNU4mfieQA272w5G4SMuKUzJU8k4IsurcDYtj7PtNwKI8zzHCehU3Y
X-Received: by 2002:a05:622a:250:: with SMTP id c16mr17561985qtx.7.1618068822513;
        Sat, 10 Apr 2021 08:33:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618068822; cv=none;
        d=google.com; s=arc-20160816;
        b=RKW3/TISIXihah38l2syfjKfFqxXNvhV55qPiBUiRV8TCY0KwuV5tgJnqkjWpoHaze
         GW9hb4ZYyK9p6Cydoi2oDk50b3MlvrMclvgyNOqfWGpRYsc9CeWHmL65b9P4Lccxjaun
         8VZHOIRW3nAXXlVF0aXiTfb+FewMK3OGbGn0GdwHWbKzYmkoqts0+O/mQ29VKe3pxt29
         YKczSh4bSOL8rFSmQAvif8+sKH0XjfmYOvp3s3pso8X8G6MbSTmxjE6oXcoyeuZgMi7K
         noXWPA0QNwBUyB/6jlojJ9Jv2m+IDQmy47gL3rhS3du/5fHPp0ET1Jn89YvFmPMsrK6N
         iFbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=XxbeESAJRhZnLZL/LShXrgElrZZDQU9QHhNsuZ6s6Ik=;
        b=Mx0atLTbZESHJruYU8jF2uSdlcNkvpjm0jzF0CkyzE4KEd82AUupB+l66PuGvfM8ar
         RMi5C8syflTiITApTfYVcWQqZ7P0VI3mmPRUZgIM9oLnpBUkubSlxRWAAsAmVQ6qMF/q
         Bpq2LNFJqgxfJ0v+9CqWjCHbIGBexJ3uC3QW16ijloZJil/oVdqvG5aqcyH6ZtrYvvzx
         Tp+mJAXDcpXfIHYXfk/7vmHcDA+Oc/CYdpkXUH5hbdZ2xjuwBYSd+cW3q/kkmuTTemg2
         iRCYmnGcqpAnG6IQ5IOZpLW5d7/iT3xUHH6qMyQ6Y+XO4bQKVIR7Pku7r+J9qubXi3ph
         N7PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXh6Q4ay;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id g22si292897qtx.4.2021.04.10.08.33.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 08:33:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tXh6Q4ay;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x635.google.com with SMTP id w8so1825758plg.9
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 08:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=XxbeESAJRhZnLZL/LShXrgElrZZDQU9QHhNsuZ6s6Ik=;
        b=tXh6Q4aytgrygIrjNGZj0h5zOlcXpbs4KPr2IxheULO9GDh6+D5Jgvx37BGF0g57Pa
         2hSj/pJGRm0wZSUvsfH/vL8x58EoDateIOFacLZ8LGESvi8cSDJG0JCL0bxhA1JsXtz5
         ENYIEzEE+kz7J5qjANJBGl3yjAPXScAaQloWXYXtRCL8E7mjVwO320YAL0bWXsry1SSC
         lYMeFOYDZ3IJGlCLrg6xVFYHHdMap139u7RmKnfhE+n+VDbhNSYuY6nCI6+cwjXYbJaK
         pOMakMrcz2i7vHTddOwaY3gHzs1GA+WoJVX1Lx90zMneQREzh0+b2JQc5uv3+kdHf9bk
         tNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=XxbeESAJRhZnLZL/LShXrgElrZZDQU9QHhNsuZ6s6Ik=;
        b=DZujSOx3HA4eU7vYQka2cKeP4hmW5+FxUhd7eb9cdkhdtNF7SJDGYiq9Jdp1lyZR9V
         jiYmubjp8yzEbsNGy4Ey5m1YA7k7lOSPnJt28Z8AYiVWRSnk8zRfiiM7Hjb7ynwVmGsL
         mAsu7qw22meJg3vQXxjOS1RQUEeAeXQtcdOjsda+sQei5b8wOFSO/1oQh5iRiNIUonxt
         qrG8jq8VZqv1GqoyBkX8Gf3AdddkYL37eIudzAsoIckJd99ni6zFobSIqp8h1NzbCX1T
         JalbfwdzymCeMQQGBS1qAORqDDfjxlhyDOcTXaVmaD4v04E61fInCB55IObVM+C3/f8q
         G2+g==
X-Gm-Message-State: AOAM532lATX/70JDSEbGqYSJCk4ldxDc3csq/RfrudrkokTvWv5exzUv
	kKjfGTnqx6nu6eP3lId35S+azGFBRvAz5g==
X-Received: by 2002:a17:90a:8813:: with SMTP id s19mr19004148pjn.94.1618068821687;
        Sat, 10 Apr 2021 08:33:41 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id c16sm5032245pfc.112.2021.04.10.08.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 08:33:41 -0700 (PDT)
Date: Sat, 10 Apr 2021 21:03:33 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v3 0/2] staging: media: zoran: aligned the code.
Message-ID: <cover.1618066787.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fix the alignment of code in proper manner

Changes from v2:- Aligned the code using tabs.
Changes from v1:- Aligned the code using tabs and readjusted the
comments line.

Mitali Borkar (2):
  media: zoran: add spaces around '<<'
  staging: media: zoran: align code appropriately

 drivers/staging/media/zoran/zr36057.h | 108 +++++++++++++-------------
 1 file changed, 54 insertions(+), 54 deletions(-)

-- 
2.30.2


