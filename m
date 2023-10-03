Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E23266AD
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 13:44:26 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2774874c3daso673026a91.1
        for <outreachy@lists.linux.dev>; Tue, 03 Oct 2023 06:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696340666; x=1696945466; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+ChnGRBqJBmpgcxtno4rDT/rRI3KstXsEKhuE2IcYQM=;
        b=NAHsRINMeI7tBiGDKc2G3aLU3Vzd9vhUn0c4eldzjW6D7qxN2aq9sfC7mS9BkYIKuZ
         UXHNbrc+JdX0ax+9glOC2mRdK1v2jInTKXIbvKvzFi+jc5mpwt/q7IKLoI0nOCPuaByl
         eB32KDXwd3S8hYLesq285mUR5jP4Dn93JpTqRnpYNZtSdtETJoZJJ4RamzXmfxt+oWwz
         4WG5SORBDn0G5zXuZcYVAiC4r3rWEOjz/UqzEZUAjpr2KKhaKCYnlLrOOpMqoESxKkQ9
         +9tXMsc831IIvXLRbgUSoRTzz+YXJ9Wmw/FpIZicmUsOEk/Rhz2kn9xgIOglhQ/RQvFz
         6lFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696340666; x=1696945466;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+ChnGRBqJBmpgcxtno4rDT/rRI3KstXsEKhuE2IcYQM=;
        b=v3CYiysvd8b93Roz9+P+/eok4ZzaGWRLvybVasZ5etawWcymFRUwljOi0KsdA4za96
         siwzmRGTZ7li8MCs2cYmjqtoM80+1Lh/l7a5IJ9rhYCPraARYoAG3/RAvDKelyTNa+l9
         nNXLIszwFCy58U8bJRrczlTWwFlqh+tH8hoKr/lXr21RIxkLq8lAwtja46EJy7DFWo6O
         BTgQY6B0janvDBXFQgifAMvL1zgiuwuKyAfSEN3vcXez3B2qf8eTMUibazPtJs7FPtvb
         g//Th0erRAeQypE9ywrYqPBhZGET47pcg3+Cyiav8wEue3zv4NPSjQbhW4iNZUCF23Ix
         tmhA==
X-Gm-Message-State: AOJu0YzlXx79KdX2dveBuati7tCpuoN81cmJFASkagGSxSD7wdv7v430
	RGZnaoJZpZzag4vuFYyUrc91/53E4YEktO0GfgYslqPuYkzcwhS8
X-Google-Smtp-Source: AGHT+IF8+5Us/gnB/BKN6u+zTdKmi6SfYoQ0vSIqVAr+EVl/6La25rqXdUDWoZRlSS+iXEPPVPFu2KX/7gZ5miGOPec=
X-Received: by 2002:a17:90a:8d83:b0:26b:66f7:c9be with SMTP id
 d3-20020a17090a8d8300b0026b66f7c9bemr13404191pjo.10.1696340665572; Tue, 03
 Oct 2023 06:44:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAJHH8bFD0i8eNOW0KObCBx9CnZxjUzXaXL2BYc33EA9u03SmXA@mail.gmail.com>
In-Reply-To: <CAJHH8bFD0i8eNOW0KObCBx9CnZxjUzXaXL2BYc33EA9u03SmXA@mail.gmail.com>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Tue, 3 Oct 2023 14:43:01 +0100
Message-ID: <CAJHH8bG_uay6v+P5Q==ioKOZaNaZv+K3wgNtuJEkoiAAV+dFrQ@mail.gmail.com>
Subject: Fwd: [Newcomer] Introduction and Interest in Contributing to Linux
 Kernel community
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Dear Linux Kernel Community,

My name is Isoken Ibizugbe an outreachy applicant, and I am writing to
express my keen interest in contributing to the Linux Kernel project,
specifically regarding the project "Extend the number of devices
supported by DRM/CI." I am excited about the opportunity to
collaborate with the community on this important endeavor.

I am eager to learn, contribute, and be part of the Linux Kernel
community's journey. If there are specific resources, tasks, or
guidelines I should follow as I get started, please don't hesitate to
let me know.

Thank you for your time and consideration. I look forward to
contributing to this essential project and being a part of the Linux
Kernel community's collaborative efforts.

Best regards,
Isoken
