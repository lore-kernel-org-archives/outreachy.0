Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723E563A7
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 10:28:01 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id a2so1488087plm.4
        for <outreachy@lists.linux.dev>; Thu, 09 Mar 2023 02:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678357680;
        h=in-reply-to:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5rFwKk6JjWVbdpGSs9uX08tpqWW5RHg1rhgXqVFnETY=;
        b=Ory0xkWrCZ3M/F6NysFm2b3LFekOSLZbKl+hZm/BXc3rEq0vIrjxE15i77QtmA6dc2
         wZMNIhfB1B1rF8tXkucACevnJ//DrmSCQ/mYBKHrgsSyeJfe8nbdAvQGYp87fqTSxcLm
         zpQTS8u0LYq45rkwT5ZiTIen8UwiHnDsjIswNaZ+y6P5Rlf603fZt7IMLrgg13Tr+sfm
         PfiC7iZ7hfkHBPmSjqxXiYy5AEhKR5lCZZi9rRk6Vh0/O0kzEYmUWWhjfrm+joWU2c7V
         F9riWzm0i5kEuXOy6dlY+KAOc4t9FRUnAT260TOD3l42bF8VWnjG5ZVkUdabCCLrvHhk
         xSqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678357680;
        h=in-reply-to:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5rFwKk6JjWVbdpGSs9uX08tpqWW5RHg1rhgXqVFnETY=;
        b=hWLEfTYnPyQQAhWiOU3r8oSaKul+7IsFTIjYPJwohCkDFIqnIiHWTxUsIzIDYa0h5m
         GEBHnbWbltZV4K10MnWNaCDAmQhJCLouxOVq2+MKMfGmx8zi5jFk5nHvQFlbU16ktlmG
         xN3X3HELnlgTfh3E054a3roDSll9R95tmN450KyvEyn6Mlzg23cc7C0qDFWviwviyWYz
         ECPIU5MejiSlMVz6WGdlGWajM1a+yqE/k+ijPz09JZ+sgcHLRIRS3gXd5cyvkrQq7Z87
         OLwq1XB2dmdJemZhD3U+dy9OLbA9F4XDMkBS8edLiFLZPkrvULXtnMA2egcCsZ1YDFG2
         V6/A==
X-Gm-Message-State: AO0yUKXCqQFkVfRRcRjn9vtbalP759LFlT1uzebPWYPGg75Pgf1f68UU
	Bmn5HmKYuSCLMUzsSjYXPXs/tjBMwa2hBw==
X-Google-Smtp-Source: AK7set8liTkcwcW44iAUDnkoc3cFrBF9Xu3lySRCV8pIIwbQ6xt5u/jwI/KBkoyhu0rpr1T2G24oRA==
X-Received: by 2002:a17:903:41c6:b0:19a:a6cd:35a8 with SMTP id u6-20020a17090341c600b0019aa6cd35a8mr27320525ple.25.1678357680531;
        Thu, 09 Mar 2023 02:28:00 -0800 (PST)
Received: from ubuntu ([117.199.168.241])
        by smtp.gmail.com with ESMTPSA id b2-20020a170903228200b001994a0f3380sm11297919plh.265.2023.03.09.02.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 02:27:59 -0800 (PST)
Date: Thu, 9 Mar 2023 02:27:55 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Re: Help to setup enviornment
Message-ID: <20230309102755.GA6572@ubuntu>
Reply-To: dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr>

Hi Julia

Upgrading the VM RAM from 4 to 6 worked. Thank you for the help.

