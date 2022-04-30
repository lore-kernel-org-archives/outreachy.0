Received: from mail-oa1-f66.google.com (mail-oa1-f66.google.com [209.85.160.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFA52F35
	for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 22:50:04 +0000 (UTC)
Received: by mail-oa1-f66.google.com with SMTP id 586e51a60fabf-ed9ac77cbbso800763fac.1
        for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 15:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=de5cYv9udGhvYDO7mNwHuK98M+en+qgo8AFwYs9167Y=;
        b=SlZXS31/hv1yey3GZfbcR/cwUXkVaB/SG7lf/EOgofrXGn3aOXrj4eosMWiBiwwCUY
         mznrGQh0r5NPWXckqu7j7ukJaE5unMRyKuU8rXDZgqsrMP40qLL9LtniPNnb9on35Bw0
         6iJtkpvDJjmEsv5Wz6la6lTKm09UI9mHSKawMuh2zxdw5Z5jM0l7JGcPv8LhfR53/lT8
         0rzh4+1kCWGGQbwNGSRuRTRTaEI4tdjCVPiuLpuOM5/YD1Hx6TiJsI72cltrqZgX2H2P
         5+gInEQ0oCdAsPlq76ChSeBKjvOdZOyMn+lpb9bNWG/sXpyieutTOIIS5TdnvO/MXGAm
         yeMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=de5cYv9udGhvYDO7mNwHuK98M+en+qgo8AFwYs9167Y=;
        b=S3oSU2ln4nDvLDBTCy7nIuWYSE2wg0/pnIAdNut3TScI8yDNiQEnfKp/A1/PYaLxJW
         h+gLIHpPv+0JeS6l6kWjlu+DHPEyxQyrlnZNGyXsEfo/iYu7/US9reV4xEnxXbdN03Er
         Bc9XdR9uzjsmshER7BRlHKM6FLHmyzPguKB2H7k+Z9rrcmXykUGj0qVQRYra3MoGlO/v
         OkcmX3gqS1BJL1oeWUYn98Z5IEnXiBhI9SqY5SEGX1p5TZenXSelwZOsnGNMpt+hwCyF
         iPc1Gt4wgVcAzsmgDNSR52q18l8h5//KrME8WWeUzmY7bPVlQlqqOomjkDWj5eiMDgw9
         kH9Q==
X-Gm-Message-State: AOAM533o0bQI7uL7qMfdAG6fFKIIp7/Q/Nboul69Qwt4sjKBZR0jRVR7
	B5U9L0vePFBXgPt9IbRIZ3IXF1zsATE=
X-Google-Smtp-Source: ABdhPJzVHCIx4JQceoZTOZI8SmdwY54K7u6kmktJ1v22KmjV+AYTOclHcyF8HKkTDM3w4T8yGVgwfA==
X-Received: by 2002:a05:6870:2186:b0:ed:97c0:e334 with SMTP id l6-20020a056870218600b000ed97c0e334mr940677oae.205.1651359003607;
        Sat, 30 Apr 2022 15:50:03 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id i1-20020a056870a68100b000e686d138a0sm4430318oam.58.2022.04.30.15.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 15:50:03 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v4 5/5] memblock tests: remove completed TODO item
Date: Sat, 30 Apr 2022 17:49:40 -0500
Message-Id: <f20acebf95681cde611d578e255b467d1fd2c958.1651357434.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1651357434.git.remckee0@gmail.com>
References: <cover.1651357434.git.remckee0@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove completed item from TODO list.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/TODO | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/tools/testing/memblock/TODO b/tools/testing/memblock/TODO
index c25b2fdec45e..cd1a30d5acc9 100644
--- a/tools/testing/memblock/TODO
+++ b/tools/testing/memblock/TODO
@@ -23,6 +23,3 @@ TODO
 
 5. Add tests for memblock_alloc_node() to check if the correct NUMA node is set
    for the new region
-
-6. Update comments in tests/basic_api.c to match the style used in
-   tests/alloc_*.c
-- 
2.32.0

