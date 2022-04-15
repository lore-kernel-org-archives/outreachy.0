Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512B933F4
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 22:49:08 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id i27so17401006ejd.9
        for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 15:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CLcz8570HW2ZMhfu3Nh/81bksrUpmcwxfu6iKdbtpi4=;
        b=H+CPrkR+Z3XXz5RBMVwoNLUITcXLMAj9NsLaBR7JfoBtO/rMqXowm0awFGLy8w/H+M
         2O4a1aTEKv/gLX6qQwcdWJ46JnudIO8rJHIxCVUtpS3btAOiniEZFY2XKcHcuusfagE+
         LwsWopnF8GeCbT4H4lnpH+Td7fcJTHq/spSXGUS0HQkFF5Hcy5mnIrB5N/tRvmVupMMK
         77f+TQ7IAUmTGU3v2WYGS3w0DI/Eq5uehFd2DgJI/G7T2tHBV8j+yUGQME5OaBSf1DLE
         B5/dlpWIs4HCaG9PJt2wdKlO4AvTUdmO8ukZoGHrHIInl17BIuh8HmN6fDXasjYtwTtD
         9S+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CLcz8570HW2ZMhfu3Nh/81bksrUpmcwxfu6iKdbtpi4=;
        b=Ozwl/IMMfOZr8qhYEw74uLBH6PQNtzMrEhUiCY17Fe6H8yg2yR92Yc1szgi73BXukd
         rLfTfbICAMfzUcSr0H8zHmI+VkQbX/WLW8R/DAbTn8qZsCgMUU+LQn/GujDR4hweFaQW
         5G+UgEa44MCKS/EYC+TnPZc1+wEu6Q9Grq627X/gDujX+jMTv/g0XKCJAUMseNc1S9ww
         wRiXrWUCNU9mZ+t9GL8UsiRY8r+0UDw+rwNNb++X/0wua6blgqXhUFiegueT3gcvyWAO
         jCYH0LDVOo+Ny/LUd3/OqC8K0atoAuQRY4TVg58ej2TZjWiLwGhuT/dJXWf1gfp30fMs
         5r7Q==
X-Gm-Message-State: AOAM531C4J5pOsCbKP4iPDKvSuvyE4EcN2GUVpTbofCAENSYABIRGitn
	IoULmsVwJSmSBIjke1NoZgk=
X-Google-Smtp-Source: ABdhPJxN13L9Vaj5bE8Fm/0G6BDBO4e/autlgHVEpujaMUfyo+twcX+XEKSk4po3HLNZUpGksOU6xQ==
X-Received: by 2002:a17:906:5d14:b0:6ef:77c4:2d3b with SMTP id g20-20020a1709065d1400b006ef77c42d3bmr587483ejt.734.1650062946454;
        Fri, 15 Apr 2022 15:49:06 -0700 (PDT)
Received: from localhost.localdomain (host-79-43-11-75.retail.telecomitalia.it. [79.43.11.75])
        by smtp.gmail.com with ESMTPSA id gh9-20020a170906e08900b006e8662287edsm2026409ejb.54.2022.04.15.15.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 15:49:05 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	SeongJae Park <sj@kernel.org>,
	Jiajian Ye <yejiajian2018@email.szu.edu.cn>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ira Weiny <ira.weiny@intel.com>,
	Matthew Wilcox <willy@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v3 0/2] Documentation/vm: Rework and extend highmem.rst 
Date: Sat, 16 Apr 2022 00:48:57 +0200
Message-Id: <20220415224859.21060-1-fmdefrancesco@gmail.com>
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
	1/2 - According to comments on v1 by Mattew Wilcox and Ira Weiny,
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

