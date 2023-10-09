Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB6638DDC
	for <outreachy@lists.linux.dev>; Mon,  9 Oct 2023 17:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kDCo3K5u"
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9b9a494cc59so813881166b.3
        for <outreachy@lists.linux.dev>; Mon, 09 Oct 2023 10:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696873553; x=1697478353; darn=lists.linux.dev;
        h=content-disposition:content-description:mime-version:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=kDCo3K5uVd3nuRnuE/Jxyv2qy0t/tKyusgNWIQWXXV4scYx74dLg9syKJELxaycEhL
         4YxNnCvaav+oVOoOI0vLoLyluyui1+uyR+nGWJJS1F9/hOsL52pwJcb2sgLMIo+/NU8G
         V6laUSl69gLbIAD6GKS86IP5W6SCtKtsmejM1W47MHL0a2SeTSGslQ9o4LCN4Z0ermtS
         b1JIj9a5OCFQsyqWsm9EA1LNmUW5EkTbvqHWVx7eo9mvODpq3v3hypHXnsYP1i2GotJ7
         evyYtb8rtc15WchretcRB2XqRGXuIxrv4NyAt59NqEKfcD1qjD4ThS1jASH9TfiE5FMf
         EbQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696873553; x=1697478353;
        h=content-disposition:content-description:mime-version:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=c8fIFFvHYJhewLH6sVGJvn3X+1oe+uDjO+xOttD5Uhy3mZZshhpwHZSJENSypXhxXd
         0aWwA8yFqRSMl6RUgL20H1e+aCOc6xreDJ24nVigeC21IXIiBv7LNGqncMLRHOtyqLzK
         9NKViiPqWWiXSFeTfGgrszbdDWDBtBcYs2j9ZGIIbT5rjvEN11Sxikaf1CZlgTMU4Hu8
         ZO0pNUUW9j/uPX51H8Ovbq1q1u4A3POnioCtIuV/KAPFqTItTSbsUp5GNQIK5sivSam+
         jn9wUUTIEia4wIF8jAhf7xtfv9lDuoJArgxyTZ569CbtgrgIKcG3wCowwc76jXaH9nhw
         oW8g==
X-Gm-Message-State: AOJu0YzQptrcodohooq/Aj2eNwq1fOe38gn8d6W1BFg3WjTU+adXPp3s
	w1Vx0j4xSxtXbbDCyEmfrVA=
X-Google-Smtp-Source: AGHT+IElvBxqi/GlhY7ROyTF5l2CXmG3OWaO6IJ/msGDyiPd3w66vw7vAPG2HhgDY24X5Jh1ki7IxQ==
X-Received: by 2002:a17:907:b1b:b0:9b9:ff16:344c with SMTP id h27-20020a1709070b1b00b009b9ff16344cmr9342412ejl.50.1696873553373;
        Mon, 09 Oct 2023 10:45:53 -0700 (PDT)
Received: from anita-HP-EliteBook-840-G2 ([41.75.181.219])
        by smtp.gmail.com with ESMTPSA id e10-20020a1709062c0a00b009b64987e1absm6930904ejh.139.2023.10.09.10.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 10:45:53 -0700 (PDT)
Date: Mon, 9 Oct 2023 20:45:47 +0300
From: Joanita Nakityo <nakityojoanita51@gmail.com>
To: outreachy@lists.linux.dev
Cc: julia.lawall@inria.fr
Subject: Solution to Error sending message, child exited 70 (Internal error.).
Message-ID: <ZSQ8S+0htr8RuTEh@anita-HP-EliteBook-840-G2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Description: I have received this error multiple times but the problem has been with the values i have entered in the .esmtprc and the .muttrc file , If you are facing this error i would advise that you have the correct values in those files. At first on receiving the error message, I sought guidance from mentors who advised to follow the steps outlined on this Stack Overflow page:https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exited-with-error-70 Upon visiting the page mentioned in the solution, I received a message stating that the settings were not available for accounts with two-step verification enabled. However, it also mentioned the possibility of using an application-specific password. I created an application named 'mutt' and obtained a password for it. Then, I updated the password in my .esmtprc file, replacing the initial one I had recorded.
Content-Disposition: inline

