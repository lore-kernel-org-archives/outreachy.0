X-GM-THRID: 6250666971081211904
X-Received: by 10.107.18.216 with SMTP id 85mr6562042ios.16.1455346814937;
        Fri, 12 Feb 2016 23:00:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.162 with SMTP id g2ls709131obe.63.gmail; Fri, 12 Feb
 2016 23:00:14 -0800 (PST)
X-Received: by 10.182.33.98 with SMTP id q2mr5388212obi.28.1455346814626;
        Fri, 12 Feb 2016 23:00:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si1862908pad.2.2016.02.12.23.00.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 23:00:14 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so4927373pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 23:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JHXPGt20AIP3K97MYitPZ0l9NM7xnPj1uPWewGUY4Io=;
        b=IdRQ/pbe7LxFXNn2LYFiccHFHE0j1/wH9ZmqL63sjzRTqn0IiE/qvOLRh6otpsxUx2
         8FYQDiW5hWtA66MALztjbJ842qZ9FLB4ZnwPIf7qnbsLV2MPwo0gUxf3te2xiZQ5WeLR
         +MO49u4lfBoaR65wDTu5RGBX5bXBgCZOB1eRZkIP7DRLF0ch5asTO3AJFtHlHfAMhHMn
         aPUrX20EdrPZcD6uuoUSQSwk3lpyujiCcT5QK+Saqwg6eAVadUmDybSc3n7EL4taDQd5
         IBkwuhMyY5Z4DoCjRSoxR0ROA/cabVM8e0e5XgnR0SXD6Y/Fqji6QQvtCxqUTBYpzw7g
         WCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=JHXPGt20AIP3K97MYitPZ0l9NM7xnPj1uPWewGUY4Io=;
        b=TFyqAaRSWY5FWNNKzrVcUM4b5FcEpP1gGf0w8HP6scVCtFv2+frPqJuGE+JHiPBI4f
         Vd1HRai6QUeAyvqTDaIulX7X32dl7kPm5nz2mHzMTaASZbn2byqz9iHkvzMGveVFM64l
         S387W1ky9g9M8wGvoAzolzrG/LAVhtkUeggmxOysIOE0zUL1qkCzjqKbQW1P7XOpuWPz
         fITyL85S/R3zVOk7+AParrP+0BODnAHFNTBbdzrIUpzjXO6xxfVwcVyToMQcUnWnuqVG
         vSB4EUPyACc55Djv3TUJoTO60rHPndhe1shBcUVbILtI3iw3Lw4sN+hL8aaRFq+N0ZAi
         XbTQ==
X-Gm-Message-State: AG10YOScA4CRPGBjD9NrLlRy+TOA8G1w1uYokVndTUct6941xrICrkTP2nSHvdvZgYMN8w==
X-Received: by 10.98.14.69 with SMTP id w66mr7925498pfi.144.1455346814366;
        Fri, 12 Feb 2016 23:00:14 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id 17sm23763671pfp.96.2016.02.12.23.00.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 23:00:13 -0800 (PST)
Date: Sat, 13 Feb 2016 12:30:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtl8192u: ieee80211: Remove
 msleep_interruptible_rsl MACRO and its single instance
Message-ID: <20160213070010.GA21006@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes the driver specific msleep_interruptible_rsl Macro 
by replacing it with a direct call to msleep_interruptible.

Amitoj Kaur Chawla (2):
  staging: rtl8192u: ieee80211: ieee80211_softmac: Replace driver
    specific macro msleep_interruptible_rsl
  staging: rtl8192u: ieee80211: Remove msleep_interruptible_rsl Macro

 drivers/staging/rtl8192u/ieee80211/ieee80211.h         | 2 --
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

-- 
1.9.1


