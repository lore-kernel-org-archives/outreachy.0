X-GM-THRID: 6615276278302900224
X-Received: by 2002:a5d:4503:: with SMTP id s3-v6mr298588wrq.26.1540240542124;
        Mon, 22 Oct 2018 13:35:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b257:: with SMTP id y23-v6ls338535wra.11.gmail; Mon, 22
 Oct 2018 13:35:40 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cYjX+S9u8DH9ep7yjx+AYaDSXYnftSktxX01nn6EgoPL8B18frs3V7dF2SpiBXoOFF1CoU
X-Received: by 2002:adf:eacb:: with SMTP id o11-v6mr1132564wrn.19.1540240540821;
        Mon, 22 Oct 2018 13:35:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540240540; cv=none;
        d=google.com; s=arc-20160816;
        b=yMjkoSGz07bR8zzg/Gnq0OHUAHLAR0fuxvAkZnjcbthK4law1233LTZeEoixc40ZQD
         ylz0FRlqubOn1vcAPEILXe80dPpn53yZQSQuK9BWjaCxw9YCnqtCL6cK7/ItNB++6j7I
         unrRYR5qqPK5aQ8zG2SKS7s+/sdnMohB/QaQ50klf4sE8sqY0PJinb5+blALc1pSQWTE
         jOm8VJI+hV0Cclab14lNGKRaeSwoEpu3tX11GczhTey7aYfLO0r+xAVv/sn15MExU4To
         2ByPeKX7kxukYOhzyyuOTTcCQIUcCE7XvZj4ujkgS22umxrNHm/1ScLaLgLt7rKqIoah
         zcPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7nElkok6QIrAPefhzGTOKoeEK1zxl77WfwsenZ2HhFU=;
        b=wGMqseDqJpUbtMYq6I8b+u/dxCS0R0w2DVGQr2RTjEvLZdg7IdylHF18I2X40mnb2r
         H7AWMd6x2AeJJaa5efWWS9csShxfXJY2UGVLQYWhPVnR0/R+KhLJynXP12ROMry/DR55
         Lu6SkVbUJmx+JGYJmi3STkpZo5p6zpCr15tTDDwDtvffzLRI0+oJo2tNtShwuamFbtjM
         U7DqwnhR3zFh5ebs99ajO+0k+RWPslWtpZDw+Yvn7K2iQgGoTJV9WI9J2QhidxKPu37I
         n6XcfCMNTUamLWxogp4ieKaQWvfekC9VRsoAiatdBEoxNOO7oC9TVTYrhLnJY6nRE/Qq
         hSYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 202-v6si585449wmo.1.2018.10.22.13.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 13:35:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,413,1534802400"; 
   d="scan'208";a="352332702"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2018 22:35:40 +0200
Date: Mon, 22 Oct 2018 21:35:39 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kim Bradley <kim.jamie.bradley@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Add SPDX license
 tags
In-Reply-To: <20181022201022.GA3133@ascii>
Message-ID: <alpine.DEB.2.21.1810222135000.2877@hadrien>
References: <20181022201022.GA3133@ascii>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 22 Oct 2018, Kim Bradley wrote:

> Add SPDX license tags to remove checkpatch SPDX warnings.


Why is // used for .c files and /* */ used for .h files?  I'm just
curious; this seems to be consistent with what is done in the rest of the
kernel.

julia

>
> Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
> ---
>  drivers/staging/rts5208/general.c        | 17 +++--------------
>  drivers/staging/rts5208/general.h        | 18 +++---------------
>  drivers/staging/rts5208/ms.c             | 17 +++--------------
>  drivers/staging/rts5208/ms.h             | 18 +++---------------
>  drivers/staging/rts5208/rtsx.c           | 17 +++--------------
>  drivers/staging/rts5208/rtsx.h           | 18 +++---------------
>  drivers/staging/rts5208/rtsx_card.c      | 17 +++--------------
>  drivers/staging/rts5208/rtsx_card.h      | 18 +++---------------
>  drivers/staging/rts5208/rtsx_chip.c      | 17 +++--------------
>  drivers/staging/rts5208/rtsx_chip.h      | 18 +++---------------
>  drivers/staging/rts5208/rtsx_scsi.c      | 17 +++--------------
>  drivers/staging/rts5208/rtsx_scsi.h      | 18 +++---------------
>  drivers/staging/rts5208/rtsx_sys.h       | 18 +++---------------
>  drivers/staging/rts5208/rtsx_transport.c | 14 +-------------
>  drivers/staging/rts5208/rtsx_transport.h | 18 +++---------------
>  drivers/staging/rts5208/sd.c             | 17 +++--------------
>  drivers/staging/rts5208/sd.h             | 18 +++---------------
>  drivers/staging/rts5208/spi.c            | 17 +++--------------
>  drivers/staging/rts5208/spi.h            | 18 +++---------------
>  drivers/staging/rts5208/xd.c             | 17 +++--------------
>  drivers/staging/rts5208/xd.h             | 18 +++---------------
>  21 files changed, 61 insertions(+), 304 deletions(-)
>
> diff --git a/drivers/staging/rts5208/general.c b/drivers/staging/rts5208/general.c
> index 79d245877264..0f912b011064 100644
> --- a/drivers/staging/rts5208/general.c
> +++ b/drivers/staging/rts5208/general.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/general.h b/drivers/staging/rts5208/general.h
> index 90a1f9297f5e..53e2dbabf04b 100644
> --- a/drivers/staging/rts5208/general.h
> +++ b/drivers/staging/rts5208/general.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
> index f53adf15c685..e43f92080c20 100644
> --- a/drivers/staging/rts5208/ms.c
> +++ b/drivers/staging/rts5208/ms.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/ms.h b/drivers/staging/rts5208/ms.h
> index 71f98cc03eed..952cc14dd079 100644
> --- a/drivers/staging/rts5208/ms.h
> +++ b/drivers/staging/rts5208/ms.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index 69e6abe14abf..e27687719d1d 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx.h b/drivers/staging/rts5208/rtsx.h
> index 514536a6f92b..2e101da83220 100644
> --- a/drivers/staging/rts5208/rtsx.h
> +++ b/drivers/staging/rts5208/rtsx.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_card.c b/drivers/staging/rts5208/rtsx_card.c
> index 6dc541e06fb9..294f381518fa 100644
> --- a/drivers/staging/rts5208/rtsx_card.c
> +++ b/drivers/staging/rts5208/rtsx_card.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_card.h b/drivers/staging/rts5208/rtsx_card.h
> index 820b1113ea89..39727371cd7a 100644
> --- a/drivers/staging/rts5208/rtsx_card.h
> +++ b/drivers/staging/rts5208/rtsx_card.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
> index 94fb35429bf1..76c35f3c0208 100644
> --- a/drivers/staging/rts5208/rtsx_chip.c
> +++ b/drivers/staging/rts5208/rtsx_chip.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
> index ec1c3d96d31a..7325362f835f 100644
> --- a/drivers/staging/rts5208/rtsx_chip.h
> +++ b/drivers/staging/rts5208/rtsx_chip.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
> index 9c594a778425..1deb74112ad4 100644
> --- a/drivers/staging/rts5208/rtsx_scsi.c
> +++ b/drivers/staging/rts5208/rtsx_scsi.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_scsi.h b/drivers/staging/rts5208/rtsx_scsi.h
> index 30f3724848fe..df6138c97aaa 100644
> --- a/drivers/staging/rts5208/rtsx_scsi.h
> +++ b/drivers/staging/rts5208/rtsx_scsi.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_sys.h b/drivers/staging/rts5208/rtsx_sys.h
> index 817700c0d794..77094809c814 100644
> --- a/drivers/staging/rts5208/rtsx_sys.h
> +++ b/drivers/staging/rts5208/rtsx_sys.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index b4a796c570c2..8277d7895608 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -1,21 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0+
>  /*
>   * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/rtsx_transport.h b/drivers/staging/rts5208/rtsx_transport.h
> index 99740c33f2fb..097efed24b79 100644
> --- a/drivers/staging/rts5208/rtsx_transport.h
> +++ b/drivers/staging/rts5208/rtsx_transport.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> index ff1a9aa152ce..2c47ae613ea1 100644
> --- a/drivers/staging/rts5208/sd.c
> +++ b/drivers/staging/rts5208/sd.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
> index 900be444acf9..e124526360b2 100644
> --- a/drivers/staging/rts5208/sd.h
> +++ b/drivers/staging/rts5208/sd.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/spi.c b/drivers/staging/rts5208/spi.c
> index 110cb9093f30..f1e9e80044ed 100644
> --- a/drivers/staging/rts5208/spi.c
> +++ b/drivers/staging/rts5208/spi.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/spi.h b/drivers/staging/rts5208/spi.h
> index c8d2beacd9e5..dcf93c80b2d5 100644
> --- a/drivers/staging/rts5208/spi.h
> +++ b/drivers/staging/rts5208/spi.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
> index d71f19ceb6fa..c5ee04ecd1c9 100644
> --- a/drivers/staging/rts5208/xd.c
> +++ b/drivers/staging/rts5208/xd.c
> @@ -1,20 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> index d5f10880efb7..bf21bf0d1616 100644
> --- a/drivers/staging/rts5208/xd.h
> +++ b/drivers/staging/rts5208/xd.h
> @@ -1,21 +1,9 @@
> -/* Driver for Realtek PCI-Express card reader
> - * Header file
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Driver for Realtek PCI-Express card reader
>   *
>   * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
>   *
> - * This program is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License along
> - * with this program; if not, see <http://www.gnu.org/licenses/>.
> - *
>   * Author:
>   *   Wei WANG (wei_wang@realsil.com.cn)
>   *   Micky Ching (micky_ching@realsil.com.cn)
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022201022.GA3133%40ascii.
> For more options, visit https://groups.google.com/d/optout.
>

