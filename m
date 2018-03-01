X-GM-THRID: 6528085796947230720
X-Received: by 10.28.202.2 with SMTP id a2mr403566wmg.20.1519938417322;
        Thu, 01 Mar 2018 13:06:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.9 with SMTP id r9ls518662wme.5.gmail; Thu, 01 Mar 2018
 13:06:55 -0800 (PST)
X-Google-Smtp-Source: AG47ELuDwf1Q46qvMxzMA7EIvJW5UvKm738Npl7Khgqf71fyRW/nLb+MqP4JPTG5HiDz33T64mx6
X-Received: by 10.28.239.16 with SMTP id n16mr381611wmh.23.1519938415093;
        Thu, 01 Mar 2018 13:06:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519938415; cv=none;
        d=google.com; s=arc-20160816;
        b=eLmyOfiKpA3aqUIHBZWvmDRK1DBua2hmT3dYT8JNV9TVNh+MAVtRD7b6CrzLoVz+Ak
         FA/boPIs1KJiZp4uWropIcW5PImUdANARpMcu7qA5FCX1k5JGQ2KzGQL8JE/80qcQEyp
         vWYva/5rGYnROpqDY/DtZQxmIGTNbUx2UG+FJM4fnBbWNQPatRWh6/Qc1nIx8KES5/x0
         bJ8pXc/CMCRoIoTGC8VC90/ORF16m+6JTmGY/MNCeFD4hBBKHKvm88hDh/GUg7ERTSO9
         I7XC6voVG6kuyW+PZiRR8lv7kkMppu2DW5M04pie80FBgnwIeVLnIjwDWwUNe1eDYj7W
         ZwdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature
         :arc-authentication-results;
        bh=f4qZBCWb5RbkmM0FksXN6rRNyAAgpymwjIxDyx2h9WE=;
        b=AYKbtrIT2qXd4J++CFxQ6qoKYJ1m4bMoYRi0dI1V2vghRUelxRyElrQGBVjvvMdA6R
         aaXqZG9lAfxkIj+jVwpngWnqEkCmQoUxgsMkKl5iYJ18OeTCHKQwkbUN8++FNMpMVmPE
         AxvRbhT8ko5xEwxBvK03qXXiRa8gnmf1wgRp5qSyn42MYVS8uEWMbQyxCE+4MJTF1166
         ElfbGJpIvW8h5kxxgUVyqVaDD2y3BcniU6KWrucZATvwSRXI0+2kHQal8BJYM1eWfj7h
         f9/v069T8Z6nF8And4YS/48bFdqrnfNl9MLuHh6+Gf5BfkOCkoztju13ksq24f8m9SSL
         RZnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=f1YVVKzo;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id a33si233377wrc.5.2018.03.01.13.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 13:06:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=f1YVVKzo;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-wm0-x22d.google.com with SMTP id z81so14649681wmb.4
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 13:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id;
        bh=f4qZBCWb5RbkmM0FksXN6rRNyAAgpymwjIxDyx2h9WE=;
        b=f1YVVKzoxUjLjpqX5RvqgpMeIASqKMSJyANYbzW1nhlNeRLB1uk1eZg3GqH13DhQ9/
         0KxZ4oyVDa8cpscLzJhewuMWqcw04Irtp4BMwcgO+PyrhrUY/PYphdCD54dS6Gn5jFkz
         GX11P0Bvvo/k+TPuOlry6zpd0w9shTm3VQdJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=f4qZBCWb5RbkmM0FksXN6rRNyAAgpymwjIxDyx2h9WE=;
        b=GWeUxcKPFxN1SRBOd0ydx4q0spkHycfdearMmJv+GUj760vX8/T+703C6kw8g74Qva
         ggFlQNjObL7h/Qzqmo2F3m5MCZRj/cAqu6YvJk1K4joGcK7CVyf7ahCYiVoDVAkmZul1
         0LJ1esT2hWWlOIME5kTViCa4I9mDAXeTnFqu1D/8nMJ9X43n5F0EejkWYaiui7BxVIKm
         j00nR+vWbGKbP1hmxcBijLJnopbk5v1MPgKzruSuJ6Qwis8VU4RjuRv0WVc7CCWsxcBD
         BMXTlP8B+T36eyjC/oTTOy+DKlH0xu6SKVmw2VwupfU2Mu2aePt/jX4Bwssm3I1RNARq
         v8bw==
X-Gm-Message-State: APf1xPDrjL8/1Dkyk2qDhkuP6th5De6kIeuSpv/lb9PGPOWnGPfnXWgV
	MZlsVx4ziB+geZU64680TmiLwp+a
X-Received: by 10.80.134.185 with SMTP id r54mr4628576eda.60.1519938413384;
        Thu, 01 Mar 2018 13:06:53 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id s23sm5015189edd.6.2018.03.01.13.06.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 13:06:52 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Questions regarding the application process
Date: Fri,  2 Mar 2018 02:36:42 +0530
Message-Id: <1519938402-28218-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

The introduction to this mailing list says: "once your first patch is
accepted, add that as a contribution for the project(s) you're
interested in". I had two questions about this:

1. Will different projects require disjoint patches to be added as
contributions?

2. Does a response of "Acked-by" mean the patch in question has been
accepted?

Thank you for your time.

Regards,

Nishka Dasgupta

