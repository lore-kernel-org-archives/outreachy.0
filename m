X-GM-THRID: 6401830709926821888
X-Received: by 10.99.143.23 with SMTP id n23mr6817169pgd.5.1490582122815;
        Sun, 26 Mar 2017 19:35:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls7087633ott.28.gmail; Sun, 26 Mar
 2017 19:35:22 -0700 (PDT)
X-Received: by 10.129.81.214 with SMTP id f205mr6745460ywb.110.1490582122296;
        Sun, 26 Mar 2017 19:35:22 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si1593796pfb.7.2017.03.26.19.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 19:35:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so8766962pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 19:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=6IwQCVUi+GIO7lkcOgYExANyly0qv8qyhcoobnqWjlg=;
        b=UeujR66Ya+SfoVJaN7efPrVJYrsX1P9wl6F+jgzHDnl6pYMJRqShdQIqsTpSiocFPJ
         HbfQrSpoL/riiP69WEjnuL648BMywziglCOQypXhHFt6Vis5TMuGGYO8cH5l+FIcHDq3
         y4s5UxDTQZ1fes2iLFGsZjKYgtR2ipdpE7wwnlMEW1Qz2vOGwXOiP2PCq9Weul93Aoy6
         WefiO7R/jdQBwuE09v3iIHBb7XMOJit15MMBZ2pyk1b4aCv5BgCzDNsq2TAIPG/3j4IS
         EUSMrUDRLuip4bIH5zRiy9usrukv5bBovZ7WVvNj9BSneCrVVzK2nAR9A9AeZYlHwiOX
         XHjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=6IwQCVUi+GIO7lkcOgYExANyly0qv8qyhcoobnqWjlg=;
        b=Ke5bgtk4SGQrSfqQS8cq4IdpCjARJZPEEms6ggBvmVhE8n4iI9muipnTBOR5ROXGgB
         fdw0CAh5cMqEJc4bhcya2y0OO+/DaFV+BX3GU9+n+Q5hRnDro0WzZkitrQqYzN9YPdp/
         07RRNwQ+LUG43bPH0/mHBMjSGX1oSfYWM/1Dp8WvvnTsbiFjvQxJqmu9ZefX/ANecy7g
         tBOehDeb+ZaW2VHCHOp8KGtCSZobJ7YN6wLnoJjppvI3fMe6k7Es9F7n/bvj2O7RG22B
         Wvs2Wi/nRIP/ikLJstZe9UaihXEYu9VyhiWuBHVcoCV5tVjpjHOmAvvYpcNx3k1B8b5B
         SSZQ==
X-Gm-Message-State: AFeK/H1NHTlhYKNWnURCjoh0ydI0V3obKs3HPluSsinLoF2QiBgoESR9fnp3ocSDj2bBRg==
X-Received: by 10.84.232.79 with SMTP id f15mr7263288pln.90.1490582121941;
        Sun, 26 Mar 2017 19:35:21 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id d1sm17163118pfa.5.2017.03.26.19.35.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 19:35:21 -0700 (PDT)
Message-ID: <58d87a69.0136620a.1c197.cbdc@mx.google.com>
X-Google-Original-Message-ID: <20170327023517.GA2535@<rvarsha016@gmail.com>>
Date: Mon, 27 Mar 2017 08:05:17 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/3] kernel: pid: Update documentation and fix checkpatch
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

 kernel/pid.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

-- 
2.9.3


