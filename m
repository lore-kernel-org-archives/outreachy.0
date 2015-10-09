X-GM-THRID: 6203663047553187840
X-Received: by 10.66.102.38 with SMTP id fl6mr10987827pab.48.1444402860349;
        Fri, 09 Oct 2015 08:01:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.137 with SMTP id f9ls683621obe.55.gmail; Fri, 09 Oct
 2015 08:00:59 -0700 (PDT)
X-Received: by 10.182.117.194 with SMTP id kg2mr11795772obb.49.1444402859803;
        Fri, 09 Oct 2015 08:00:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id el2si219073pbb.0.2015.10.09.08.00.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 08:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy16so88863481pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 08:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=v1y1A3WlBjXbjG0dI3aIm/j/fw4nobLSDv0Vp2GQfV8=;
        b=mTEr0A3B8a3lJ2awkLFIO/c0uiBb+ftMmDLpMl0Ivab7eRZB3XxD1WzfBaPJKii5re
         y4ndUQmEtT9efpCR1bwrGZDGXaufmKWLCiGm88VFXGCiuRrSs1AAv4n47RnWeI0WKUOY
         xQtlPMsPgqV83l2aO6jD/Y/yalGFT27AgWwRpqhRrYX/gO+gCu1+GsyQcKsuVzFd14vi
         VaQmI+mrR8BFhhnumVJ58E3qpy25qsfZUSoEORw4TUQDO2fTGSUSzJ3LrlJYeknff6A+
         +0QeOwHvFUKgDOKHmv+7TrNBnDpPcZ6ytwkNzSCwGG9li2q4AnaDO0d05yU7KKbolvaq
         uE9A==
X-Received: by 10.66.255.42 with SMTP id an10mr15497614pad.107.1444402859668;
        Fri, 09 Oct 2015 08:00:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id gw3sm2977194pbc.46.2015.10.09.08.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 08:00:58 -0700 (PDT)
Date: Fri, 9 Oct 2015 20:30:49 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Fixed multiple checkpatch warnings and errors
Message-ID: <cover.1444402286.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the global variable initialization error and removes the warning for character limits.

After these patches, warnings and errors thrown by checkpatch get considerably reduced. Also, the warnings given by checkpatch now cannot be fixed as it might reduce the readability and search of particular strings.

Shivani Bhardwaj (2):
  Staging: lustre: ldlm_resource: Removed initialization of global
    variables
  Staging: lustre: ldlm_resource: Fixed character limit warning

 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

-- 
2.1.0


