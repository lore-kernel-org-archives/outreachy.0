X-GM-THRID: 10320556851200
X-Received: by 10.153.8.171 with SMTP id dl11mr4998060lad.9.1427631637566;
        Sun, 29 Mar 2015 05:20:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.21.166 with SMTP id w6ls455536wie.3.canary; Sun, 29 Mar
 2015 05:20:37 -0700 (PDT)
X-Received: by 10.180.97.200 with SMTP id ec8mr1796768wib.5.1427631637141;
        Sun, 29 Mar 2015 05:20:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id c8si624316wiw.1.2015.03.29.05.20.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 05:20:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id dm7so36814979wgb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 05:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=keTVrHwhRh1bXORFQUhZ9EWbkmI8yiyv9PH1EY8WhII=;
        b=lZ50GzPbX7c+lMgwl23rjklghFeLc6E65zVxPWhwNqjgZmDO/rywVRvywDRlOvl0UM
         XmSGE3GIviCdSYrL+ev8oxAtjIg0Tjiv1siroOd+1tNRpxwes78DT0+3kjQPCzUqnDGj
         8/ga94r74EERyzK13VtaG/dpcnz1rKHG4KTF5GRxcnTYaVUKR6vwEG14gNVc5rBq8mVQ
         KMrbjbbyy3dJq63dS05n9IRAnYWte12UvsSU+D5vmc2dqrG+W+oxBELaI5z/qrPZ6BMo
         qRF1Hgu8eyDWdV6or5rZryBSczFfacbBdI00WqUF33D9y4RRilxMc05tcYqit4/GaoLg
         nlJw==
X-Received: by 10.194.220.7 with SMTP id ps7mr54903537wjc.84.1427631635061;
        Sun, 29 Mar 2015 05:20:35 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hi6sm11013434wjc.34.2015.03.29.05.20.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 05:20:34 -0700 (PDT)
Date: Sun, 29 Mar 2015 15:19:38 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] iio: Place drivers on standby on error
Message-ID: <cover.1427630628.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset places drivers on standby when an error occurs.

I know these don't belong to the staging area, but I need a
review before sending them.

Cristina Opriceana (2):
  iio: magnetometer: mag3110: Place driver on standby on error
  iio: light: ltr501: Powerdown device on error

 drivers/iio/light/ltr501.c         | 19 ++++++++++---------
 drivers/iio/magnetometer/mag3110.c | 18 ++++++++++--------
 2 files changed, 20 insertions(+), 17 deletions(-)

-- 
1.9.1


