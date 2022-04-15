Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889FB33F4
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 23:19:23 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id 21so11422706edv.1
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 16:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fl9P1fWtDG1OkEFRgKvC5cv/qOT4nNS4Bnbk2bWR2ig=;
        b=h7bCcyCHzPUdMc3cqCmJVCpip0m9mEriH57X2uK1h2CIT0ztP2mIOkfZKDsT+RZ4qI
         R6QEmRlCJM5dWthhj9SlXtNKt8uTebpCH3dEZ0hD8uuweodmUemvMx8jxXArnks3jI/r
         +nr8PbizLanf6PqqH5QT8y59QAFfkYMdm2YAgg37qXWqxlCsZYatqZ8gBrinz4nrmnBb
         bdYNszabX0efNz6ZvBKL2P4BvkKJW1cCfIwww1w/FWl8rZYKKDS0LEE9o+L1I9wjxpvg
         PbUNxHHCDtaXtDp1weA46itjesOlyGiyxxlqgsNAPVBQKxYhMFbCmwZ7769gBoQIATq9
         NLZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fl9P1fWtDG1OkEFRgKvC5cv/qOT4nNS4Bnbk2bWR2ig=;
        b=FEGmmbmir4X87YSC/JHN6Kb7PXjVDXkYWMExvGFQ6cLcDz0k9SXw5VBoIgPFIi+9WT
         oUyJxSs48LK4xK3k6hXzMSG5MhJmXbUQwx6cck5RmBhC8yQAl4EHRsP6FOEuOVbAKIX8
         W2uZ8MYjx/t6RFr21sXZKMxmVFKO+OFxu6c7uq+N23XH4m5vVgZ3KENULQjxZxS3r3R/
         KXJAoTF7UXzGuG3lB7oC8KjIPGlzjAJjFSVZGHjVWQ1i8cXq4eFmnLF0rrrdQlX/HlI1
         QftNf92YP+k1Q92f4AziFQBlCUHZdEQcYyITC8dsPytdmP/npE4ScB8EJk61HHBiQzi7
         +mfA==
X-Gm-Message-State: AOAM532nqzaFIylDbM65QCHCXoVVnkdqd3srrF+U/o4Hg4pgmquwaGPa
	iYq+LUt3jgm4QhO8/ao1zdY=
X-Google-Smtp-Source: ABdhPJyknTqHTS2CfeoyYUK//y5tO12vqFUmVcMOOduSoVfRfsH+WIw2JJl8xyFEHKCvgRhrnqtPaw==
X-Received: by 2002:a05:6402:238d:b0:41d:7630:2300 with SMTP id j13-20020a056402238d00b0041d76302300mr1329883eda.363.1650064761638;
        Fri, 15 Apr 2022 16:19:21 -0700 (PDT)
Received: from localhost.localdomain (host-79-43-11-75.retail.telecomitalia.it. [79.43.11.75])
        by smtp.gmail.com with ESMTPSA id o15-20020a50fd8f000000b0041f95b8a90dsm3203394edt.69.2022.04.15.16.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:19:20 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	SeongJae Park <sj@kernel.org>,
	Jiajian Ye <yejiajian2018@email.szu.edu.cn>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ira Weiny <ira.weiny@intel.com>,
	Matthew Wilcox <willy@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	outreachy@lists.linux.dev,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3 0/2] Documentation/vm: Rework and extend highmem.rst 
Date: Sat, 16 Apr 2022 01:19:15 +0200
Message-Id: <20220415231917.25962-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend and rework the "Temporary Virtual Mappings" section of the highmem.rst
documentation.

Do a partial rework of the paragraph related to kmap() and add a new paragraph
in order to document the set of kmap_local_*() functions. Re-order paragraphs
in decreasing order of preference of usage.

Include kerneldoc comments from include/linux/highmem.h and remove
redundant and obsolete section about kmap_atomic().

v1-v2:
	1/2 - According to comments on v1 by Matthew Wilcox and Ira Weiny,
	      correct a mistake in text, format paragraphs to stay within 
	      the 75 characters limit, re-order the flow of the same 
	      paragraphs in decreasing order of preference of usage.
	2/2 - No patch.

v2->v3:
	1/2 - No changes.
	2/2 - Added patch to include kernel-doc to highmem.rst and
	      remove the now redundant section about kmap_atomic().

Fabio M. De Francesco (2):
  Documentation/vm: Extend "Temporary Virtual Mappings" section in
    highmem.rst
  Documentation/vm: Include kernel-doc to highmem.rst

 Documentation/vm/highmem.rst | 96 +++++++++++++++++++++---------------
 1 file changed, 56 insertions(+), 40 deletions(-)

-- 
2.34.1

