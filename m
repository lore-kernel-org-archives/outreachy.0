Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA00234CF8
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 21:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="chrVWrQd"
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6c64a3c4912so965942a34.3
        for <outreachy@lists.linux.dev>; Thu, 05 Oct 2023 14:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696542177; x=1697146977; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1LMB2NmajON3SsqmaUjy0EtRmk+25EYc4Fha65m1XIU=;
        b=chrVWrQdH2dDS5WgYDDXTBsvfdTOZDdOGzZCZfnhvRx5wi9XTpenR1wGOJW+jQBQKh
         h0xR7Bt1t4ocZeuAJ/KpKUmeGJ5vRyd1ewi3ZXWxKRmnBi9dTXOiMpJ7snq+puUfBIeB
         hXaTcXIkCxHjtd44gF8bMohpZ26yIUz+7A+xoMAqWU3eKGLUMaMJKt7hZzVGwL512rw9
         yYNPwmMO7QsJ3njHzcTk9oplwr9ZUFKoo9orKt/p3Ab5X5s7pNFoK/Sfyu4ynklgCF+o
         GJndoL5KkSF2VAZAIFRJqwBPsCY+joUkeKSiR+Wx7Ma8FWjTW7eai4AHbX0uYZeioncf
         qC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696542177; x=1697146977;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1LMB2NmajON3SsqmaUjy0EtRmk+25EYc4Fha65m1XIU=;
        b=kz2I4z46kNC4v5JV/tIsM9ihPdSCLIzJIJjRJv043h4RJX6VjXauhdKAngg3Mz7R0I
         1XheqgUoW2DFy8vc+oHZ9NgIr9wh6ecac+gZ9TtTI9G17R7nrVEbkePN4RfGO2hlgMGU
         nwpDZMy47tUqYACOvpzKVC9hMESXEaC97cwaYlKa0MdUDgo7RqXGe/igQ7FyWobcDsT3
         hZ4RgvsN9Xvk/bR9l/GG2q4Zahpo7wpjNbxS4h+sLMoA1dAeRWr/qrAOn956ootzwJLr
         n/sdLdQ1ifF3NcNCOOvJrFQbfnDQjG3CUBMyGKCj77fDGATBGk35g3T5WOQV2JELUv4w
         FgWQ==
X-Gm-Message-State: AOJu0Yxl4fSgX6ngTH11p6Y1zz9pmdzkc+iUDTVDjP40HvPf0Ihw4MB6
	v8WJ8OhrnPOd39hDd7iZ6sl/0FTZBiVk1g==
X-Google-Smtp-Source: AGHT+IG28wgaBS5AHIgTewnyXmC8wlP9sXVytbSo2xdd7loIV6E/r1uN/235R2M8mczCFlj7JOjrZA==
X-Received: by 2002:a9d:7d98:0:b0:6bc:de95:a639 with SMTP id j24-20020a9d7d98000000b006bcde95a639mr6837593otn.16.1696542177439;
        Thu, 05 Oct 2023 14:42:57 -0700 (PDT)
Received: from DESKTOP-EVNFDUR.home ([47.184.17.213])
        by smtp.gmail.com with ESMTPSA id k7-20020a056830168700b006b87f593877sm384859otr.37.2023.10.05.14.42.56
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 14:42:57 -0700 (PDT)
Date: Thu, 5 Oct 2023 16:42:55 -0500
From: Jeremiah John <jeremiahjohn08706@gmail.com>
To: outreachy@lists.linux.dev
Subject: Checkpatch.pl throws an error for an object file
Message-ID: <ZR8t36IHi65t900o@DESKTOP-EVNFDUR.home>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I have ran checkpatch.pl on drivers/staging/rtl8192e/ to find any drivers that need modification, and I received the following error:

drivers/staging/rtl8192e/dot11d.o
---------------------------------
ERROR: Does not appear to be a unified-diff format patch

all other files checked within the rtl8192e folder had no formatting errors reported by the script. My question is why checkpatch would throw a formatting error for object code?

Thanks,
Jeremiah John
