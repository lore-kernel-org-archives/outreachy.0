X-GM-THRID: 7028286413648953344
X-Received: by 2002:a05:6000:12c5:: with SMTP id l5mr1943812wrx.173.1636400449914;
        Mon, 08 Nov 2021 11:40:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1c7:: with SMTP id 190ls155224wmb.3.canary-gmail; Mon,
 08 Nov 2021 11:40:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxGmL+5uGa4im3twlr3J1eyTUUBbBX6Zqs9vwQU5SYh55/DVNxyR5UzS1I8oLxPaRaHxTO/
X-Received: by 2002:a1c:4d0b:: with SMTP id o11mr828495wmh.68.1636400448466;
        Mon, 08 Nov 2021 11:40:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636400448; cv=none;
        d=google.com; s=arc-20160816;
        b=lTp3MVcOxIPZKjOaL1PpBi2YoehrAMJN0U/3WHG2ZejrRLBhW6RK08pmD16Li8QPe9
         tD6LthiEKeOwd4zD3LK5c2lFMB0fpcmlP/rMm181uS713AfJ9WzJUcDzttE0yXqGGa9X
         QNPqWOrNpiVmj1JNKEZ/7aziIldUcKqvxvYFEgLal+XG2H17FjPCKuGRgeNrHd7qWQKV
         te+eKs5VLH83IRXLgr719+AmLelIW7bG+1m0Vszmkn1X8LIwbXDFy9S/53R207IbqBW5
         OjIRjtqv698AvmYFIN6b+vaJzg7g95KLj9PFolPxoEdWHXEeBb8CHOPvHpKttL7bxWwk
         gz2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date;
        bh=GgSKqhU8o1tzzRG58zdBCmI/DsbJaKDz/Ll9ooFF+hc=;
        b=xPSDxlK0HTO+L82Hg3d/Tbw2AJHPmI+zmPGjS1oPfyXi6dWz41dwOlujsx5qhBnZNv
         Rk9Z+SRZ4gojR0pfJh0R93N9YfFAkKx7bUfg2wuji1hlS+aRcC9OUYnFbfQ127CGkgAU
         wLaN2OdSdDcYw3kKDtiRvclF6fOdmZInFAN9eYWRDFhm3abQDUDLLrUbxxRm5Ncb1bT3
         Z+VLAdAUBQ15T+H8X0AqQpQNRjaY5HFviva2Tv8RjQcifyH/nt0YIJJIiWG3mWqaSaA6
         H1c9Z2m5x0mXRBZBED8hCYEfSn77YzfTrNnH3aJm0EY7emJ4eYvAvnXV6DcwPIrfxGr5
         9a8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id 201si30596wma.1.2021.11.08.11.40.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Nov 2021 11:40:48 -0800 (PST)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="255985510"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
   d="scan'208";a="255985510"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2021 11:40:46 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
   d="scan'208";a="491346646"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2021 11:40:46 -0800
Date: Mon, 8 Nov 2021 11:47:58 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Contribution Period Has Closed
Message-ID: <20211108194758.GA545430@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Thank-you to applicants, mentors, and reviewers for participating
in this contribution period. It is now closed. Our mentors will be
reviewing and selecting applicants for the December cohort.

If you have patches in flight, go ahead and continue to copy this
list until you get closure on them.

If you have new patches to send, use your get_maintainers script only.

This list will not be monitored until the next contribution period opens
in March 2022.

