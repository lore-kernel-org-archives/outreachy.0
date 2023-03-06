Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04E22CA7
	for <outreachy@lists.linux.dev>; Mon,  6 Mar 2023 18:42:02 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso8870466wmq.1
        for <outreachy@lists.linux.dev>; Mon, 06 Mar 2023 10:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seecs.edu.pk; s=google; t=1678128121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pcKqJbp47rk8iCmFpQOIwlZIpNLdH4X0hXL9PEsfqFo=;
        b=TWgt7G6p38c5j/m7ZsXPhnY+TVICruAAXZA0VVpFvUVD2VC/KGEmgDTS9KAon46QDo
         z16XjJebd4C0sGWAbKjBvyqBs5qciP7iKYt/3Jbk3MItyt9P1o7MB3cPEuOsrEfdfnT6
         CyN+CmP3U6Br2tQY8KfYmukYzN7S9fEJvQecQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678128121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pcKqJbp47rk8iCmFpQOIwlZIpNLdH4X0hXL9PEsfqFo=;
        b=XLAdqV3/XCZ0UCSNQbMqdzK05/HPiz/fNaQH6wQcI2SIWagRj/rNy2QQ5gnTaHpTWB
         gcBhnmqlfn77c68QIehCyxK7uC9xIAAn6H4wG92R3SPFi6AsbRzbWYB5KS/7D+AN2fYP
         F0hrWxNV85zd9w6q8TYuia6ocpAGKCrI2CbFK2p8WH7W/63ccq0BoCC4pn6BtC9aVLp7
         VHKJJrrIt838GZVAJVWJOYkRJZXVujF4Lj4S4mp4YBNJJuPKA/O+vKSSpoUaD3GvnOH4
         Flyw5C0OLPziFoBBmIHugq76xC6JYFqmWICFnBb7EYYVQj51jGM4GybrZ77JJiZr+Vme
         Lz0g==
X-Gm-Message-State: AO0yUKWdD7HdS4k7dW554nP/bJVqC3KAm+MDJXidDV4QT4RgcSG/a4Jq
	jR47gzK0uiEE01IeXHEqKiic2Qlwp1iCo4F+PHw=
X-Google-Smtp-Source: AK7set95Hb3WRV1eDIgOgrdqGIl7B1oYAD5pGKRM+9DVTTVhc3g5D/p+XiWTxq3UMS346DDfMylJxA==
X-Received: by 2002:a05:600c:3ca3:b0:3db:8de:6993 with SMTP id bg35-20020a05600c3ca300b003db08de6993mr8135013wmb.4.1678128120816;
        Mon, 06 Mar 2023 10:42:00 -0800 (PST)
Received: from khadija-virtual-machine.localdomain ([39.41.45.115])
        by smtp.gmail.com with ESMTPSA id hg13-20020a05600c538d00b003d9aa76dc6asm14575999wmb.0.2023.03.06.10.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 10:42:00 -0800 (PST)
From: Khadija Kamran <kkamran.bese16seecs@seecs.edu.pk>
X-Google-Original-From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: alison.schofield@intel.com
Cc: outreachy@lists.linux.dev
Subject: Khadija Introduction Outreachy Applicant
Date: Mon,  6 Mar 2023 23:41:57 +0500
Message-Id: <20230306184157.13795-1-kamrankhadijadj@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZAJV2shFMkTMdJtQ@aschofie-mobl2>
References: <ZAJV2shFMkTMdJtQ@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Alison! I am Khadija Kamran and I am an Outreachy applicant. I am a Software Engineer and I am currently working on my first patch. I am looking forward to working with this community. :) 
