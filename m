X-GM-THRID: 6207450266150633472
X-Received: by 10.129.108.212 with SMTP id h203mr8796400ywc.38.1445284640536;
        Mon, 19 Oct 2015 12:57:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.88.73 with SMTP id be9ls868174igb.28.canary; Mon, 19 Oct
 2015 12:57:20 -0700 (PDT)
X-Received: by 10.68.68.202 with SMTP id y10mr27573730pbt.0.1445284640112;
        Mon, 19 Oct 2015 12:57:20 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si3497869pbb.0.2015.10.19.12.57.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 12:57:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id z6so39093429pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 12:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Znw6r7rge0rYIhnJyzsblHQyDlIxovzYnkr+HPohrig=;
        b=exMjvJzR5Jr5cdJkrh+tRh/VNcaqKBIsQL+4i1eN3pOKmJLap3IJmRYus2wPA7Upd3
         JODiEh4uRa0XE6y2nlqrdzrx7PhONx7Ol5MUDo/CbwkY7c8AHxWN9XCYpCWsjpFv2RYJ
         WYJ4I4cuWIyhSCzw1fUGW8mnTdGJ2nEtYtDDI1kFAU1KzbLbntCtoRyNW3rPXr6TffgE
         uLSIG3s+g2zlZcTq/igxA7RP9IBll8/WyOv44HCAxd065KMaByNNOdFRPRp3lxAfYV/a
         CsnmRcb6T7qodnChzn5nSXv9j3BRNqXLR516MLGyVhQAzMFiXPIZYmcFJQQLTp59sCKT
         4vsg==
X-Received: by 10.66.193.132 with SMTP id ho4mr24253837pac.110.1445284639997;
        Mon, 19 Oct 2015 12:57:19 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id fb1sm38112607pab.9.2015.10.19.12.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 12:57:19 -0700 (PDT)
Date: Mon, 19 Oct 2015 12:57:18 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] staging: r8723au: fix multiple checkpatch issues
Message-ID: <cover.1445282918.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset addresses the last 26 checkpatch WARNINGs in file:
drivers/staging/rtl8723au/core/rtw_cmd.c

I'll call your attention to the "Line over 80 chars" cases:

I chose to address 'Line over 80 chars' because all but one could be
resolved by cleaning up a single struct definition. [PATCH 1/5]

The last one appeared to be due to excessively long function names
as opposed to deep indentation/complex code requiring refactoring.
See my notes below the --- in PATCH[5/5] for further info.

alison


Alison Schofield (5):
  staging: r8723au: break parameter list at separators and align to open
    braces
  staging: r8723au: replace printk() with pr_err()
  staging: r8723au: use kernel preferred style for block comments
  staging: r8723au: move constant to right of comparison test
  staging: r8723au: add & use local variable to simplify references

 drivers/staging/rtl8723au/core/rtw_cmd.c | 154 +++++++++++++++++++------------
 1 file changed, 93 insertions(+), 61 deletions(-)

-- 
2.1.4


