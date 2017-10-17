X-GM-THRID: 6475500386308325376
X-Received: by 10.55.221.196 with SMTP id u65mr10155107qku.18.1508229503373;
        Tue, 17 Oct 2017 01:38:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.17.4 with SMTP id c4ls341856qtj.4.gmail; Tue, 17 Oct 2017
 01:38:22 -0700 (PDT)
X-Received: by 10.233.232.135 with SMTP id a129mr10604929qkg.14.1508229502870;
        Tue, 17 Oct 2017 01:38:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508229502; cv=none;
        d=google.com; s=arc-20160816;
        b=Pghi5CcgGXNa6W2YU4WIKu89LsZ7rVm9OQ63hLyfw7DZRnJLR+unN7591lC94Hn3wR
         9bxhTsCCy4e4AkjIlZdWjIn+seY9KLB42xY03eELfVRSyI7HumAnjfnv6yGWltPcrK1P
         ARzGJcrwGKJtn/ypvaJtOwCE+VDcepsd6C1IdufQJs0HrcRrx41/WreYQ6kT8o5uup6n
         Ztt+0rfNTdHTmmb2raZJC+l7ot5UNsW1ToG21f6qKQVnF79CL8VlwftR5yj70DS6d679
         BxT4GRmH5K+5RhNKK7RbXljHjd32A5FyOUJ01Gu84jVbz+Doo1zzkDkOg0nAwNZYT89m
         jNSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=J0Ui467V1SuwC4Zw0IfmdgTAR6BsZCkwmL1pDnstAUo=;
        b=Znozlca1/zgyd+IL0jPixg/8s9z0ASKv1aubIDrqtg9043Lf36gTiASq53vt/RdriA
         hOpi/KZlw32AtTwHY7DwE3IsYGOjBCRvpRfd+nwst1+GRM4UJUmUB1r2zqy3Fh9vWaIr
         ni17j4UfcoTjoFi22E99wFMQPnFmOmv2+596YlsOa/tCPGEcDpjEksIBpUdCpjoOlmu7
         Sv8veJLOP1w3SN47Xi4RxQEcpa3f7bll/yTIsg/hQS+3MA0NjcAEJ6GQZUz+vCIFndy3
         Xh0SsT177SGvnytHkKQ8GfvhudSIJxhAhGU0gSeyciNqOx3d2KNlbMDBXAEJ4fl/C/Ih
         FSFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=onOiABtG;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id v50si641243qta.0.2017.10.17.01.38.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:38:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=onOiABtG;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id n14so836475pfh.8
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 01:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=J0Ui467V1SuwC4Zw0IfmdgTAR6BsZCkwmL1pDnstAUo=;
        b=onOiABtGxyKmGQzbF+Wi9eCQq1YOh+Jkvb5+5qu53HRiwXTr3mRbI0Zq4NqZ5WOmo+
         aGxGqF04knMPoeDKKELdhcs8xahFjHONCeE1fbTXARQv3PcR33RlbGU1qdzFHi+c8rnp
         4uj67vo+DylOyNljFlI9FPhc4CicFfgaUKnAiTffe197sUVxTSkK5K2BNZ2GtqlHCK3l
         MwUsMHeHFSF/v6IQe4BEoEzWv+mDWp4g4n5Tu6jU72BcC2SuYtZkSJX4pc69FntIAUho
         AMN71/RFK7d6Wh2G+KOfte31Zl1KucFvXiGgnwDvMjie7yYO06DIEQq3nT3czv6lwaaH
         6X7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=J0Ui467V1SuwC4Zw0IfmdgTAR6BsZCkwmL1pDnstAUo=;
        b=XlrQ2PbKFPJqz3kC4zpGltYuRXJ4dLOdrHpMo1cwzxhQdl0Z1XdXE87sc7mnhKFylf
         gs8U3NJfz/8SByxRqcGJzb0VHI4sRunWty1KMdDXpB/kIBw80dfD4WD/uM+jgdlxpl80
         Sro0GpZSuiKEjbiUXot2qalP62mpbKvrRlnSS5LREtffdFGtV1xcy7be8ULTOnYY7kL8
         MmCAS9ZcdvB6RsBIAXOiaMuu9/xnfxlodOnnQ1xTfUuJx+m4EFr3JpXvHyfa8HslP3CS
         83AXeTebHWvMIn1xfgOodY5ZPx3FVhmzyIdHqOH4HuY/oFXxzMKLdcCMqKGxo4a+s7FC
         jtkw==
X-Gm-Message-State: AMCzsaUnIU9cVVJQp4alua0BKlR+0qQpFXWrxYd/DeMDnKQeztkDEAiV
	r7uo7rKWsorIQvi3XgqqiSLOkve8
X-Google-Smtp-Source: AOwi7QDDBX1QIj4CrORU+zZawYXfHJvDOgUdARGoPqjokxGmWJISyl5lHA/ZL9pHhHQnygGlCUSrVA==
X-Received: by 10.101.65.129 with SMTP id a1mr10469666pgq.203.1508229502502;
        Tue, 17 Oct 2017 01:38:22 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id c25sm15603475pgn.64.2017.10.17.01.38.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:38:21 -0700 (PDT)
Date: Tue, 17 Oct 2017 02:38:19 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH v3 0/2] drm: Move debug macros out of drmP.h
Message-ID: <cover.1508228315.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset move debug macros from drmP.h to drm_print.h and move
printing related functions used by the debug macros from drm_drv.[hc]
to drm_print.[hc].
In addition, it fixes old comment style.

Changes in v3:
- Move debug macros and print functions into drm_print.[hc] instead of
introducing drm_debug.[hc].

Haneen Mohammed (2):
  drm: Move debug macros out of drmP.h
  drm/print: Update old comment style

 drivers/gpu/drm/drm_drv.c   |  47 --------------
 drivers/gpu/drm/drm_print.c |  47 ++++++++++++++
 include/drm/drmP.h          | 150 +-------------------------------------------
 include/drm/drm_drv.h       |   7 ---
 include/drm/drm_print.h     | 149 +++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 197 insertions(+), 203 deletions(-)

-- 
2.7.4


