Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0766A12E47
	for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 10:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VMaEwVGV"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40572aeb6d0so8333035e9.1
        for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 03:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697108045; x=1697712845; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PwfVpeI/qSAs+d/kcZD7V6/5x83n0bo3RF0VhsDESEo=;
        b=VMaEwVGVD/Mji2R+iHRmirxpMBLNRwc6GLLO6ooD4HVw1LcYiZMkZgusQz+zw5HaDC
         DAQA/UlyMRpY6v/aPmSilIDc/RxK/mTGolDeCqPzJiEP2kqgSUPP5NoY3PH4S1wNNJ/K
         IVBusp14hQFRR2DpkoGy4Ht80n0oPSn9O3Ti2y5IRGuAJZgtBTEB/s0J5hMGVupLAYiE
         MswYt60g12BbGUmswAV5Eq7YW3QLhME3T23OnvBCypLJ5XKcyciqVnP3dIeXZiuqFIxr
         +p10vK+O6iHu5n3Onn6sS8r0NcvyhRJNgx8PhPPw59ikRUUpr8YSdehShg257lzRxdY8
         i6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697108045; x=1697712845;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PwfVpeI/qSAs+d/kcZD7V6/5x83n0bo3RF0VhsDESEo=;
        b=hh8JiUBnZ1qSzYM5xW6Vec6u8q+Mg6yIm262gBd7PI2gieQgBd1n2hKel3cKJUXqj/
         E+YjjnAaZgHxoPGur1tJo5EZE3HQqc+35IBDfnvDHm4U0PUt0r5SmC8YnlP5AYlz5VFB
         qnPOanhG6F2b3hzUAhu2iQFHXqmX1RtSEf/pPuYUebeJmtK4TSm7cwpC5G80gjUgNKjZ
         lLh4aG46q5WR0uE2w+8kZPFHcN8iFtvOkQgncvsialAei2+QNgPKQ7DVyBTmZ6bXariN
         KSG5oN2GUWzoUIdj6uLk9wYUnCLg1zxkZCSbU/R7WekdXI5dhnKJmwn4dK7E29DN1fTL
         hyEw==
X-Gm-Message-State: AOJu0YziFLmI2oXxwMNEpCtI00YdSssq1DT+UF+CRDkv/ySVI2t3i9l0
	w+BihIGQscnwnZOsGYx5yA==
X-Google-Smtp-Source: AGHT+IGmil8G1lOOQ84BDSSL1lO5arUsgffeT2iBPG7XLayQy/zHk3ehOtzpTOo4YlETYqWfFYi7QA==
X-Received: by 2002:a7b:cc95:0:b0:3fe:f726:4a94 with SMTP id p21-20020a7bcc95000000b003fef7264a94mr20743232wma.14.1697108044789;
        Thu, 12 Oct 2023 03:54:04 -0700 (PDT)
Received: from dorcaslitunya-virtual-machine ([105.163.2.146])
        by smtp.gmail.com with ESMTPSA id ce9-20020a5d5e09000000b0032d687fd9d0sm6456549wrb.19.2023.10.12.03.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 03:54:04 -0700 (PDT)
Date: Thu, 12 Oct 2023 13:54:01 +0300
From: Dorcas Litunya <anonolitunya@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: [Outreachy]Inquiry on checkpatch.pl
Message-ID: <ZSfQSSvna4hX0tnM@dorcaslitunya-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Julia,

A general inquiry on the checkpatch.pl link in the documentation page
is not working. This is found in the "Start creating first patch"
section. When you click the link, it seems to be broken, as it returns a
404 error message. Any assistance with regards to this will be
appreciated.

Kind regards,
Dorcas

