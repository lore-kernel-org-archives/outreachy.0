X-GM-THRID: 7019107485779755008
X-Received: by 2002:a05:6512:169c:: with SMTP id bu28mr8287680lfb.41.1634263313628;
        Thu, 14 Oct 2021 19:01:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:bc16:: with SMTP id b22ls1375536ljf.1.gmail; Thu, 14 Oct
 2021 19:01:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQw9+Y0nmOClSP1vpS4CHZAQV5nCBQRaDwYJ071gRqy0vOOOyNV3vrfFyI2etqVaTEMC/V
X-Received: by 2002:a2e:2f19:: with SMTP id v25mr10143834ljv.281.1634263312030;
        Thu, 14 Oct 2021 19:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634263312; cv=none;
        d=google.com; s=arc-20160816;
        b=VJccicJjVjkMs+0NT/9Lh7OQOBgTXIA1Lt50dWVSHXV1Y1ZTCym0U7oEGiqCYl/bGz
         lO1IyD9PvokY37zya9yceSqi+ApMxLyDWrq9dczh+QHxBNlPOdhhmDN/UZl6NV6jplZd
         utXoOdy72gc7xAaWgUUf2dTqF1BKxEDbG9zaTL3q/+IR7dRjFvi/CisEGoL0c1mIgkw6
         xkEBhx7AnV2hSNguiQcmbIgpqeyfKwI4+a/CX2EtNrD/KN6GJeuFoqKB0zVNyabJCkSf
         zjbX7FgoaUSy0OhKJxzhzfG3KTooXmPoLRczcSgeSpEcMmjwpJKIklYVLDS7yatu0848
         iBKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date;
        bh=HY1nFfSiFi1oEWx8QMPc7QPDa/pbtW/fIysF+/Na520=;
        b=bB+2WaRhb/UPc2oq1M0UH7LU+KW5u07/qbItdy+U/BWVjCr2ZsuIgdmmHmO0shzep9
         Jv4FGjywHvDLSqZ+vxUkk3fGKB3QqR6gfU80nVzDp/3tl7+vULVygYg5ZfZ+rsHSGfGd
         2b4mdB0i1rFJViIttrCjoaGTDSLjAjRl+6ic4qsupaMLrYsHGFXuWiJ5Q1Xuv1a4zay4
         n6xFfPei2hmRXLKz9SkrxoviKE0NJNppTaCW/rVUA/gfJyih516qArmis/NjsRhF2JsK
         hdOplVeof6jc7/JYA5NpYzZGSG3Cc7zgTQPttJD4Vsz0T+JldnEwsYcfssXeFsMQ1bYC
         Rk1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id c35si269573lfv.4.2021.10.14.19.01.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 19:01:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="227787696"
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; 
   d="scan'208";a="227787696"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 19:01:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; 
   d="scan'208";a="492277311"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 19:01:49 -0700
Date: Thu, 14 Oct 2021 19:09:52 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: No staging/drivers/media/atomisp patches
Message-ID: <20211015020952.GA428161@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


I posted this restriction in a couple of more places to make it more
visible: Outreachy Kernel Community Info, and in the FPT (First Patch
Tutorial) itself:

"Restriction (Fall2021) Do not submit patches to Outreachy for
drivers/staging/media/atomisp/. Any other driver in drivers/staging
is OK to cleanup."

I also posted a note in the Outreachy Community Info asking applicants
to read back through all messages since October 8th.

Hoping that is a bit more helpful.

Alison

