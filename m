X-GM-THRID: 6401830709926821888
X-Received: by 10.99.149.72 with SMTP id t8mr9511236pgn.62.1490676614462;
        Mon, 27 Mar 2017 21:50:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.14 with SMTP id j14ls4258508ioi.44.gmail; Mon, 27 Mar
 2017 21:50:13 -0700 (PDT)
X-Received: by 10.99.130.67 with SMTP id w64mr8675812pgd.64.1490676613369;
        Mon, 27 Mar 2017 21:50:13 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si485557pfx.8.2017.03.27.21.50.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 21:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 81so18265547pgh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 21:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=G2MJie79+hnvEKQ4iihEqiHpdcedX5FsmFwSBTsTx1k=;
        b=jOASkhJHY1CfZOM0VHxqR0noG6nqlu7oBakUAko1zS5EWTji0QMyG0evuplCI8s1Bi
         EC3EC4E4of31EIqXRP2eMsrOGlGADUx7lyULgHYsCBJPW05qIZpgew/8yEMofFeO++tN
         8SpNS80my1gGTVsDLKuDX6V5B5gChNWijaIuakb0lZs7kzNYHrJHLQ8G3sGQ13vCGjLT
         7a21Kq4BcQXjpA/OvWzWSKP9taFibrg4xPFJoyizMgHDiEoa2hJwveO3NjIt0nzSbfYt
         PYBpbDqFX8w8CH9Vchp1XijEwfVWICkaGrZHlYMH/7KsPnQWD1JfbKQu7BWXDAJoIlmL
         SrPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=G2MJie79+hnvEKQ4iihEqiHpdcedX5FsmFwSBTsTx1k=;
        b=EXnNAIWT+PcE/bkL7Ji0f5EokcOx35sG0u8TYfTSsR2mOYRZSX4yXFJM3WzrHltygY
         G65snKpBE3OirzH2aWV5PDg+oPkAzYK7qjTuq46Dh7fZMOSTqNgPajDbYtSyFdqM+BBR
         Cg1Ykm3v9qRPQsiWu1SHDQ1AqL3+1zTnGlWlV9UoqZc5PKowAs6J7whMMLd11DGet33e
         N766Lefns27ma7uGliH/TedEPSX2a4rmxLPubglMPtuU4RtyUp7NsCAhtcSKlsvov/I4
         Yy4hI1znk2w80NQrmsjS03qF8QNe3cfzUfOz7OHeSwCOjIZSP6eKLGsvIPMHoM+nRl2n
         /vVA==
X-Gm-Message-State: AFeK/H2Oi9qrsPn5wzAkEjHc3C/C7z57iojBpXze8MKxNBdTJ2x0N/f1vSDkfjVkpO72qg==
X-Received: by 10.98.214.4 with SMTP id r4mr28498942pfg.185.1490676613059;
        Mon, 27 Mar 2017 21:50:13 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.143.164])
        by smtp.gmail.com with ESMTPSA id e16sm4054608pfb.102.2017.03.27.21.50.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 21:50:12 -0700 (PDT)
Message-ID: <58d9eb84.1050620a.4599.ca6d@mx.google.com>
X-Google-Original-Message-ID: <20170328045009.GA6610@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 10:20:09 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 0/3] kernel: pid: Update documentation and fix checkpatch
 issues.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset fixes multiple checkpatch issues and updates documentation
of pid.c file.

Varsha Rao (3):
  kernel: pid: Update documentation.
  kernel: pid: Change function return value to bool.
  kernel: pid: Add blank line after declarations.

 kernel/pid.c | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

-- 
2.9.3


