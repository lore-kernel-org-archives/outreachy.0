X-GM-THRID: 6264247085046956032
X-Received: by 10.50.30.226 with SMTP id v2mr12803054igh.2.1458594945523;
        Mon, 21 Mar 2016 14:15:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.71 with SMTP id as7ls1604400obc.69.gmail; Mon, 21 Mar
 2016 14:15:45 -0700 (PDT)
X-Received: by 10.182.53.233 with SMTP id e9mr24958295obp.28.1458594944989;
        Mon, 21 Mar 2016 14:15:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id sf5si4256214pac.1.2016.03.21.14.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 14:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so32141777pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 14:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=asrFBfEz/L58CB0Wh8Y5H+wElOrSsH4+SfqyJyTBLG8=;
        b=E1OjLKbU0TdO6ygQ8hiTPBL2BonblB06WntAwD1s4REa4lA+3UwNefuwUfQXooS8e9
         fuXyju5cAe6MIPkD6Tqy4ROjwpKIvXLh8olJhtRIXMeNWVa7Von1p4EXoPmnYpz8Wvcf
         vojghRGpbXHAaFIoNfkxHc7qBRcvsiMpnJflgXk1DIm8GKiWuD5xlXzwKcArmy8DKtUT
         ne5WfG9co73/Ee8rCIz9cZUj4CGNqjWjnIpJdlnpqZG+r8KbrBH7HXiXzNIH5rrfcjTA
         Uni13BRosdkcWQzCfaVI6tbiBBtpvJtQwxoDuNZiTiqPFOtWkfPRO2yUxlmtm0HYwD8O
         bUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=asrFBfEz/L58CB0Wh8Y5H+wElOrSsH4+SfqyJyTBLG8=;
        b=EVBaL4Ngj54osJQpWrSRjlR878L9MBozxpcbv2KwdOns/DNEJMEJSkeRqBBJqIGIX3
         7eG5G6hF+pS0HnofrOkL2XgVKH4P7GfwJQpGkabph7xuBBjpsBcESwglEXR+CM2i2oJ6
         HgkNs8xMrOWFQZyViVpxepzPjTSzxTahBZgN+3OpxIlq+q2iBPVnNiE8rodQk7APxrnP
         rSJS5ODj1tumMlHZASuGjquADQ6+01VCau/veZlNbH++RF6w5i519rGX+LolxXxbLaQU
         HTlQg2J0srKig9XPYk9C+CVJNA4TExtq8xWrXkaomAcI/rSfXrKP8sCq34bgMQASOKy+
         1pUA==
X-Gm-Message-State: AD7BkJI82TeDx2mdfQ4p1UPiaCM1bsQeDcxcXMNTPo9M0LHj4aH+9cWb2Qtl2XJ+H2lVEQ==
X-Received: by 10.98.75.28 with SMTP id y28mr18650318pfa.126.1458594944682;
        Mon, 21 Mar 2016 14:15:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id r68sm42848108pfa.33.2016.03.21.14.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 14:15:44 -0700 (PDT)
Date: Mon, 21 Mar 2016 19:46:54 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] Staging: Use sizeof type *pointer instead of sizeof
 type.
Message-ID: <cover.1458569051.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

changes in v3:
* Adding changes of v2 to each patch of patchset.
changes in v2:
* Correcting the commit message.

Sandhya Bankar (3):
  Staging: rtl8188eu: rtw_efuse: Use sizeof type *pointer instead of sizeof type.
  Staging: lustre: rpc: Use sizeof type *pointer instead of sizeof type.
  Staging: lustre: o2iblnd: Use sizeof type *pointer instead of sizeof type.

 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 4 ++--
 drivers/staging/lustre/lnet/selftest/rpc.c          | 2 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c          | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.4


