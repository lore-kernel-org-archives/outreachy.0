X-GM-THRID: 6949336424403435520
X-Received: by 2002:a02:c8d4:: with SMTP id q20mr17338239jao.90.1618018472158;
        Fri, 09 Apr 2021 18:34:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f009:: with SMTP id w9ls1763968ioc.11.gmail; Fri, 09 Apr
 2021 18:34:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyOhaEuyD/1AVbF3SFYtBXeVxSjsudSxDr6SJTYgD+jQCZoYC+YxLmbifvxCxVR+uN4cPz4
X-Received: by 2002:a5d:8d12:: with SMTP id p18mr14159759ioj.31.1618018471404;
        Fri, 09 Apr 2021 18:34:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618018471; cv=none;
        d=google.com; s=arc-20160816;
        b=0Yovl4A5g/VkQVMN8ENNDWDbspbzIoy+1XgFnMgCAPBc0CfnaVxT+54MQV9qQzJYeW
         tTDxHMmjcAuLUYtvBrG9/p9wWx6IyPadVf2eVT0nBLEQwAgzoPx1k4pbS7Cc41ThyOAQ
         VEl7h0E9cVl82ZNnRg3vQRNOL5wMNQod2QFVQRYeWncDl7UhPqiJyQ/RAdG7ZKTguQ63
         v/6YlARFKShqc+XpugWn/sVZW6ybMgncjquU18xZBhSJJ6mD1CE5mofOzyC8cf1o4Myq
         HzQCA4HQuxXM5FtzkkvOepvLk8GTUVYvBpacZKQE14OpFtNQ1FFCIiX8CuRykpp6Jr6r
         QPyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Wsw3laNKp4K1pOr1JmqRCZTS7mmbPQQcq1XguLZwJWk=;
        b=njTQpfc9U4RgQkaohxwK6ttG7q/tbk6gx+NbcSP6bX9Bcn6pbJJBooFh5rc+geUQY4
         OT1w0dUsUXpd9QGmVk7/q5WOJi0zxE1ExFMCEXW4Aiw30cq0H/cJmzdogJsmMii3vZY6
         PHxKm+U49hb/EoSaE/PFKHEsifnlnRTraU6utDkhUNpy0vclS58+dVr3WcPXEfMVx0lO
         F8owRkzgJdaiYCp3PfEAkCy2VmAgprXw7kqieAn/yHGJzfk0CiNVf0bpkbT6ODwVw+rf
         /s3dTC32FoV90c2k1VGBUTwOJ/6QCNgxN57B0/2/9CnyffpYo99kMHVLhKHL5uNTCrRM
         y/sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPl5ou5U;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id x7si183605iow.2.2021.04.09.18.34.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 18:34:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mPl5ou5U;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id t22so5201115pgu.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 18:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=Wsw3laNKp4K1pOr1JmqRCZTS7mmbPQQcq1XguLZwJWk=;
        b=mPl5ou5UDi5gzboKS8ESlunB9Caylq8iYe9f7S8SqpJIPLD6c/nmaPw8xccBUo4m6N
         cC1+DwpUg+98fmJlDR0TwsDVU4AVJBw7KFPd5Aj5SJvplHRM5uQ8UmuZ/JJoQcDJGby1
         UCwdZE6snEEXhQc590gMigbKKc8hi6vvH/RqgEpYUa5QzggXv/ENL2PB9IAhF3+SB5/i
         0N49haiU3Dyrh5juc4xdgfM5HZL8U7gZUUsDuzjKEb+/R9mcT3HyL0COxDPEQAQ3KH4m
         bXwZvCN/g7cgRaaqigirMy4DZPQMPCadrDeQ3S9b0WM6+avpMJQsbtwRxq38OhAhRvXM
         AN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=Wsw3laNKp4K1pOr1JmqRCZTS7mmbPQQcq1XguLZwJWk=;
        b=JL0hFBMs6oHapejn3lCiFLtYW2dqbEEAwoR4mzawcqjrPP/0Usps4/1ROHzqqmZSG9
         Z4kUuhTeUEzVRaSqgQNCQJLzJ3EXorVin2JiQHFPCN58qVhcxflP/IwH2XKwKWX17vw7
         Eltqd9sSp779OcQLi6y5hJhp9XFdfdCeyZDeAjsdvhL066xqjKPmtIdmkwC43JnMWzdh
         9fw+JmAe77UC//cZ3VQSWjvHaOoNTrrRawo4KNxzt4iVFCQ3c/kla7acg27KChiuZB+S
         x82Q6Oxdu9RHf31jLi0lawRmAlASF6RuQff9TZUi0JbUAzfWqi4WCqVZysVtXNM8t0D0
         gkZQ==
X-Gm-Message-State: AOAM5314MsIWLq3gm/9FUPgtr9mcM1RMJHXOShKov7oCe+UGGgApJRDG
	PbkASM7syhN8UfuURLYM6TIZXHa5KunBFw==
X-Received: by 2002:aa7:98c9:0:b029:242:18fc:562d with SMTP id e9-20020aa798c90000b029024218fc562dmr14420057pfm.39.1618018470710;
        Fri, 09 Apr 2021 18:34:30 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id u14sm3179714pji.15.2021.04.09.18.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 18:34:30 -0700 (PDT)
Date: Sat, 10 Apr 2021 07:04:23 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH 0/6] staging: rtl8192e: cleanup patchset for style issues
Message-ID: <YHEAnyO11wgp5PNZ@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patches fix the cleanup style issues.

Mitali Borkar (6):
  staging: rtl8192e: add spaces around binary operators
  staging: rtl8192e: remove unnecessary blank line before brace
  staging: rtl8192e: remove unncessary blank line after brace
  staging: rtl8192e: matched alignment with open parenthesis
  staging: rtl8192e: removed multiple blank lines
  staging: rtl8192e: align statements properly

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 43 +++++++++--------------
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 28 +++++++--------
 2 files changed, 29 insertions(+), 42 deletions(-)

-- 
2.30.2


