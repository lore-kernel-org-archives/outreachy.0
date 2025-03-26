Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBA01F540C
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 16:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743007517; cv=none; b=s1OZjKi17Sul7J240fyXrxYnY7Gi27lw3vPmn2dJ5I8NW3/8tft2OJWtv0MRibUNZdme0MS24ytrEmR3ALayoMTbQdiprPwcIDpR+niyhSXvUXmtyRr9zvNLPebdNg/RnJIy/V2w3oAvbSvNPt9PRZTdg/qDQQtdcKuibVDxzLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743007517; c=relaxed/simple;
	bh=cIPjrvfOGl9ipqhENEiVB4JbREv0g94cAbQWw4z5nsQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=Iqyup4QL1wS5l7Hy1ULF8aEkiJnSknU9FFeH9zUrDkHxgVxIRS9bRrpiVUk5fsMKqFQuB7D2TOwwQeIYiCWF3bs7ZtecxHGdRc5YicKqoeeENRrzoq10EMPu5sNw5GkIeFsqY039CSG/iEOUwwoPhmtzzvx6/R3y8k/yoxlgRxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dRyq0/KT; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dRyq0/KT"
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5259327a937so30802e0c.0
        for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 09:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743007514; x=1743612314; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cIPjrvfOGl9ipqhENEiVB4JbREv0g94cAbQWw4z5nsQ=;
        b=dRyq0/KTWqXA8ZRpLOVCG1lPSOm9TLSRO2srcYKsEIbte+rPbEM7DefJc11R5VpfWZ
         As+JUFCFtrpnZ9bqgvlYQKh+MAIf1ydo/VO4oATHywaLI8UKuZfdigMQVhA69fbxIabI
         hthu/smDJ1pt1QbzN5mToA5OPlTFUIeFNVyYp0+68fsUz1pSWAax3akLEwg6b2HNkbA3
         XsXVK9YJR2ZCZc8H3aFQXYfrmiqc1WDnutNjjguUtlz4wfYMmFZQadJFJ4T8Ln3VK1Sx
         TubZafmPvEbGeeDnh/gz896riBSyV7jWH4FzSKvfYmIlpD3ZK/AQf5rO1fo3clwuvDHf
         /TdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743007514; x=1743612314;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cIPjrvfOGl9ipqhENEiVB4JbREv0g94cAbQWw4z5nsQ=;
        b=JziD4ao6UbV9qpv0gDGDYYKidUsMcoiUlIdNAfJawdDa0+gwrK4WUruC2mz1AS25qi
         LX5NHtWIx55Y1dpU3TaByUj5BNn+9pXFcFZBFgm/l7p/7AqhWf7FWi+OX1sNiBlI9jmW
         IRc+DOdTdV9GLjNtiZsu+2gg90J/iO7mtwuoNXWQndpxYvXxuchMt7yx5YcvG1PSoHKK
         CWMNfyNTo1XB20YcD8AvE3XGvVuRNNev+myANu8CKCWDDA8LxCkWSUu+rSgm/vkIs/wZ
         Jn5sbWkdUXzOiw2tZQEt1v554MCZnfKxAiq6L0CtydbTNGCff6jwU3trV8uHT8MsJkCX
         pCfw==
X-Gm-Message-State: AOJu0YwKGaN2ihBZoktx7IH80WMkJl/beJi9aqLENL+xLk6xoYNxhaLF
	PyMqWZhLxOGRgIgpm9+ys9hU88/LuvcpxQTc7I7Gj4JGi03VtGugCH/gngZu7OUKGtGas8wg0of
	4Wt7G5LkCLB8r/ei0h+SsK1OoOMqLZY8P
X-Gm-Gg: ASbGncssRRsI1/3GdwDKZBXZ7p7Jtd4Ac4HBE0bez5kFVn0zIuM5afSJbH4zC+K+jXV
	/NhOpPpSAp4DVD6Cq6VxEdRTeyrAOmE3EyrUWChlaNgRUgErGba8rmOq7s5u9JgLCVDfVAq7d8t
	VAo+kKFDYs/5/z404ofPTwEcQdWIiU
X-Google-Smtp-Source: AGHT+IHJq5QRWRf/g9Fex3JkoR6KNk4/ieMQxsWHwTla8Mh2G5FW7eVEgg6PxFeaLPCNGK+0Pfnn3bZz6sZuStoyMuM=
X-Received: by 2002:a05:6122:4d8b:b0:520:4539:4b4c with SMTP id
 71dfb90a1353d-52600a99a7cmr579716e0c.9.1743007514029; Wed, 26 Mar 2025
 09:45:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 26 Mar 2025 17:45:05 +0100
X-Gm-Features: AQ5f1Jo48CS4Qm1nVuBF99SORRg_GsRnSHXzV9NQJaCUsUPD0_7NtvWymR0_LX8
Message-ID: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com>
Subject: Confirmation on next steps for contribution
To: outreachy@lists.linux.dev, Julia Lawall <julia.lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"

Hello Julia,

I hope you are having a great day.
I just wanted to confirm the next steps for our contribution.
Do we send more clean-up patches and how many accepted ones
should we have before we can move forward?

Thanks
Adekunle.
