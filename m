X-GM-THRID: 6257131864000036864
X-Received: by 10.98.67.142 with SMTP id l14mr17998015pfi.13.1457381079952;
        Mon, 07 Mar 2016 12:04:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.148 with SMTP id e20ls3019ioi.25.gmail; Mon, 07 Mar 2016
 12:04:39 -0800 (PST)
X-Received: by 10.66.231.4 with SMTP id tc4mr18588982pac.14.1457381079478;
        Mon, 07 Mar 2016 12:04:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id y20si3332193pfa.2.2016.03.07.12.04.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2016 12:04:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id 1so2614415pal.3
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Mar 2016 12:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7jOZbbGNMvLDFFhbFgPvBMuyyAyTC3FLlGBx2q+QYo4=;
        b=kyjJeAGhTVUTRfD3f2V7puW/KgXRHs9EheI7cLM2kmOvmLctMbnsjCIJbZ3bDL4UGC
         2LTVXAdcaPIHbO5EUdQirJyucPCM52LzhS2FXN0ynMUjQYw3H8JhFi2lHIyKeV1vY7xQ
         VSGjX5igiRFO72qwjT4PkRjyNTtdniOXYgHs7r9VPJSF0hzIIVt1HZu0eA6JJMa49B8k
         jCfQCIJH65slos0NPAGbtPeCrQlv1o7WreAYrSQEd9fdVzPU672JAZn/ZteXR7DUOG9w
         xpERQfkvCXq/Oo3f+7OnxQdzgo0zD6Kd9VLjIJnqgMRIjTmEaQdaQKIx85TNNH+8NDh8
         lzfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7jOZbbGNMvLDFFhbFgPvBMuyyAyTC3FLlGBx2q+QYo4=;
        b=VINHtMAdXemGfmOiJxLXREXGA8CYAjROBZpBL/hfwTlyl18d76u8fG3coKYv5aZxPB
         qUyia89KQCcxSjDqPJCt37OQjg2YsnkfI10oRNFyw1C+rl+K7RVsG8/zLC9DlTq1LtiK
         DzelKwvpYTCagz1CuBZ6l6sm22FjWt2MruQw/3E6PaZuW4iex0CPFYsSq/37YuWtbGzM
         dWNAblrQN7Z4WTXYs+fBUWkHO9DyuYMQKr8Yw7et4VY+auPuaXILJty1Uw+vcepecsPV
         yLfcWqtPYLbArvdNYhXDzixD0TqynTSSzotDdesWPZEJFaNwbPnUDv3X7CmEewBALOG5
         o8pw==
X-Gm-Message-State: AD7BkJI/ojifnY2uwmUTj/gg4jOqb1GQqVVoKMbOHl/4gEoPpGU7qoCLwFBFe7f9ea+txw==
X-Received: by 10.66.102.106 with SMTP id fn10mr36583865pab.60.1457381079343;
        Mon, 07 Mar 2016 12:04:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.136])
        by smtp.gmail.com with ESMTPSA id yl1sm26026990pac.35.2016.03.07.12.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 07 Mar 2016 12:04:38 -0800 (PST)
Date: Mon, 7 Mar 2016 17:35:04 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: Do not print message if kzalloc() failed.
Message-ID: <cover.1457351977.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Sandhya Bankar (3):
  Staging: rtl8188eu: Do not print message if kzalloc() failed.
  Staging: rtl8188eu: rtw_efuse: Do not print message if kzalloc() failed.
  Staging: wlan-ng: Do not print message if kzalloc() failed.

 drivers/staging/rtl8188eu/core/rtw_cmd.c   | 3 +--
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 4 +---
 drivers/staging/wlan-ng/prism2sta.c        | 1 -
 3 files changed, 2 insertions(+), 6 deletions(-)

-- 
1.8.3.4


