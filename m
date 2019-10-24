X-GM-THRID: 6751257049994100736
X-Received: by 2002:a17:906:ce39:: with SMTP id sd25mr690313ejb.331.1571903469452;
        Thu, 24 Oct 2019 00:51:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:88c:: with SMTP id e12ls1168856edy.2.gmail; Thu, 24
 Oct 2019 00:51:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzRSABlJ4d2VGklZzGKJrbJDx0IlgirtbF0ahTO4i/fQWNXgus5P4QLs+CVuGJdF2rTzCW1
X-Received: by 2002:a05:6402:6c6:: with SMTP id n6mr42466244edy.292.1571903468569;
        Thu, 24 Oct 2019 00:51:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571903468; cv=none;
        d=google.com; s=arc-20160816;
        b=cSARXAMW8NJhX14/bA/QQB/wvkkgRLwTCYPcDbdGu9JGI40imwKmAF6bUsuGZf6H3O
         gijyvCdoehISCVh3IDJYIvB3r0q8yKtxi/Gj5SVs3drU9TDS6FyJnIlbiwjyan6T1N0r
         xEXMpPT+aoBtICk+qk3sCRp1mfrRx2B2wPVz6K6Rqn/vkZsz7glvAlrxkBqnMsSqmb6q
         Sfvw6YIubPFArX7cEG+CfM6SoLzp07RdGWoFfCA/9P+UcqRkjAXZmHtPRuni1t34tdtS
         YawRCoCtXFpozJ7ZAVAlVqYq5JDPSwXnSAgYo/SqBMBhyYonQetADy2zpzcI0SJuQ1me
         ALlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gNsPZMAuUmyAMzN0lXZa5LYJh3O6nj8fncsXyWMiYh0=;
        b=xrabZjT/AYLZk28ZawisVzj2Pa/0WZlPXMhsp4vHmPsXt7axlNh4U0YkKKSUOhbPSW
         g6G7KIQmOhJt/OUAwqkP9UyXSQa8raAKdsRqtN9YZT7weUwDthslcDYypNyamuMUT0c1
         bBK7j3MVGxo+dtE++kVb1K3zaHjYQPCTCBiWpz2bdTwAhGKov1QWSsRNs3hL640D/czR
         2LE1CthKJZWT/qGNVVdcuSuQ1URkdy/YNASy+YYP7p+VmsmCTaLN0V3Yqy7aTupeWjWu
         vrOcPPzyad+p+P41B8Kwv6f5sb+JHj6xKNGIDB30zEuwGatQMPxZTOXiU6IMqNNRmxAR
         +oRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c31si36123edb.0.2019.10.24.00.51.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 00:51:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,224,1569276000"; 
   d="scan'208";a="324076643"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 09:51:07 +0200
Date: Thu, 24 Oct 2019 09:51:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: kpc2000: kpc_i2c: Fix
 lines over 80 chars
In-Reply-To: <e374c2933a1f0a4eefa31c1f0d8553dbf22a57ac.1571899299.git.jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910240943360.4479@hadrien>
References: <cover.1571899299.git.jamal.k.shareef@gmail.com> <e374c2933a1f0a4eefa31c1f0d8553dbf22a57ac.1571899299.git.jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 23 Oct 2019, Jamal Shareef wrote:

> Fix lines over 80 characters warnings.
> issue found by checkpatch.
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc2000_i2c.c | 202 ++++++++++++++++++--------
>  1 file changed, 138 insertions(+), 64 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
> index bc02534d8dc3..d133b31d41e5 100644
> --- a/drivers/staging/kpc2000/kpc2000_i2c.c
> +++ b/drivers/staging/kpc2000/kpc2000_i2c.c
> @@ -99,7 +99,8 @@ struct i2c_device {
>  #define SMBHSTSTS_INTR          0x02
>  #define SMBHSTSTS_HOST_BUSY     0x01
>
> -#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
> +#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED |\
> +		SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)\

You don't need a \ on this line.  Consider putting a space in front of the
\ as well.

>
>  /* Older devices have their ID defined in <linux/pci_ids.h> */
>  #define PCI_DEVICE_ID_INTEL_COUGARPOINT_SMBUS       0x1c22
> @@ -136,7 +137,8 @@ static int i801_check_pre(struct i2c_device *priv)
>
>  	status = inb_p(SMBHSTSTS(priv));
>  	if (status & SMBHSTSTS_HOST_BUSY) {
> -		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
> +		dev_err(&priv->adapter.dev,
> +			"SMBus is busy, can't use it! (status=%x)\n", status);

It might be more readable with status on a line by itself as well.
Currently, it kind of blends in with the string.

>  		return -EBUSY;
>  	}
>
> @@ -146,7 +148,9 @@ static int i801_check_pre(struct i2c_device *priv)
>  		outb_p(status, SMBHSTSTS(priv));
>  		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
>  		if (status) {
> -			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
> +			dev_err(&priv->adapter.dev,
> +				"Failed clearing status flags (%02x)\n",
> +				status);
>  			return -EBUSY;
>  		}
>  	}
> @@ -162,15 +166,20 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
>  	if (timeout) {
>  		dev_err(&priv->adapter.dev, "Transaction timeout\n");
>  		/* try to stop the current command */
> -		dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
> -		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
> +		dev_dbg(&priv->adapter.dev,
> +			"Terminating the current operation\n");
> +		outb_p(inb_p(SMBHSTCNT(priv)) |
> +				SMBHSTCNT_KILL, SMBHSTCNT(priv));

Put SMBHSTCNT_KILL back up on the previous line, since it is part of the |
operation.

>  		usleep_range(1000, 2000);
> -		outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
> +		outb_p(inb_p(SMBHSTCNT(priv)) &
> +			     (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
>
>  		/* Check if it worked */
>  		status = inb_p(SMBHSTSTS(priv));
> -		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED))
> -			dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
> +		if ((status & SMBHSTSTS_HOST_BUSY) ||
> +				!(status & SMBHSTSTS_FAILED))

This would look better lined up with the left side of the ( of the earlier
part of the test, rather than being randomly indented.

> +			dev_err(&priv->adapter.dev,
> +				"Failed terminating the transaction\n");
>  		outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
>  		return -ETIMEDOUT;
>  	}
> @@ -244,7 +253,9 @@ static void i801_wait_hwpec(struct i2c_device *priv)
>  	outb_p(status, SMBHSTSTS(priv));
>  }
>
> -static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int hwpec)
> +static int i801_block_transaction_by_block(struct i2c_device *priv,
> +					   union i2c_smbus_data *data,
> +					   char read_write, int hwpec)

Align the arguments with the right side of the ( on the first line.

>  {
>  	int i, len;
>  	int status;
> @@ -259,7 +270,8 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
>  			outb_p(data->block[i + 1], SMBBLKDAT(priv));
>  	}
>
> -	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
> +	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 |
> +				  I801_PEC_EN * hwpec);

If the whole second argument would fit on one line, that would be better.

>  	if (status)
>  		return status;
>
> @@ -275,7 +287,10 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
>  	return 0;
>  }
>
> -static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
> +static int i801_block_transaction_byte_by_byte(struct i2c_device *priv,
> +					       union i2c_smbus_data *data,
> +					       char read_write, int command,
> +					       int hwpec)
>  {
>  	int i, len;
>  	int smbcmd;
> @@ -301,7 +316,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
>  			else
>  				smbcmd = I801_BLOCK_LAST;
>  		} else {
> -			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
> +			if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
> +					read_write == I2C_SMBUS_READ)

Again, line read up with the right side of the ( on the line before.

>  				smbcmd = I801_I2C_BLOCK_DATA;
>  			else
>  				smbcmd = I801_BLOCK_DATA;
> @@ -309,25 +325,33 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
>  		outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));
>
>  		if (i == 1)
> -			outb_p(inb(SMBHSTCNT(priv)) | I801_START, SMBHSTCNT(priv));
> +			outb_p(inb(SMBHSTCNT(priv)) | I801_START,
> +			       SMBHSTCNT(priv));
>  		/* We will always wait for a fraction of a second! */
>  		timeout = 0;
>  		do {
>  			usleep_range(250, 500);
>  			status = inb_p(SMBHSTSTS(priv));
> -		} while ((!(status & SMBHSTSTS_BYTE_DONE)) && (timeout++ < MAX_RETRIES));
> +		} while ((!(status & SMBHSTSTS_BYTE_DONE)) &&
> +				(timeout++ < MAX_RETRIES));

As before.  There are also too many parentheses on the while line, but
that is perhaps another issue.


>
>  		result = i801_check_post(priv, status, timeout > MAX_RETRIES);
>  		if (result < 0)
>  			return result;
> -		if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
> +		if (i == 1 && read_write == I2C_SMBUS_READ &&
> +				command != I2C_SMBUS_I2C_BLOCK_DATA) {

As before.

>  			len = inb_p(SMBHSTDAT0(priv));
>  			if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
> -				dev_err(&priv->adapter.dev, "Illegal SMBus block read size %d\n", len);
> +				dev_err(&priv->adapter.dev,
> +					"Illegal SMBus block read size %d\n",
> +					len);
>  				/* Recover */
> -				while (inb_p(SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY)
> -					outb_p(SMBHSTSTS_BYTE_DONE, SMBHSTSTS(priv));
> -				outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
> +				while (inb_p(SMBHSTSTS(priv)) &
> +						SMBHSTSTS_HOST_BUSY)
> +					outb_p(SMBHSTSTS_BYTE_DONE,
> +					       SMBHSTSTS(priv));
> +				outb_p(SMBHSTSTS_INTR,
> +				       SMBHSTSTS(priv));

No need for a newline in the last case.

>  				return -EPROTO;
>  			}
>  			data->block[0] = len;
> @@ -354,7 +378,9 @@ static int i801_set_block_buffer_mode(struct i2c_device *priv)
>  }
>
>  /* Block transaction function */
> -static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
> +static int i801_block_transaction(struct i2c_device *priv,
> +				  union i2c_smbus_data *data, char read_write,
> +				  int command, int hwpec)

As before.

>  {
>  	int result = 0;
>  	//unsigned char hostc;
> @@ -366,12 +392,14 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
>  			//pci_read_config_byte(priv->pci_dev, SMBHSTCFG, &hostc);
>  			//pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc | SMBHSTCFG_I2C_EN);
>  		} else if (!(priv->features & FEATURE_I2C_BLOCK_READ)) {
> -			dev_err(&priv->adapter.dev, "I2C block read is unsupported!\n");
> +			dev_err(&priv->adapter.dev,
> +				"I2C block read is unsupported!\n");
>  			return -EOPNOTSUPP;
>  		}
>  	}
>
> -	if (read_write == I2C_SMBUS_WRITE || command == I2C_SMBUS_I2C_BLOCK_DATA) {
> +	if (read_write == I2C_SMBUS_WRITE ||
> +			command == I2C_SMBUS_I2C_BLOCK_DATA) {

As before.

Please check the rest of the above issues.

julia

>  		if (data->block[0] < 1)
>  			data->block[0] = 1;
>  		if (data->block[0] > I2C_SMBUS_BLOCK_MAX)
> @@ -384,13 +412,21 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
>  	 * SMBus (not I2C) block transactions, even though the datasheet
>  	 * doesn't mention this limitation.
>  	 */
> -	if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0)
> -		result = i801_block_transaction_by_block(priv, data, read_write, hwpec);
> -	else
> -		result = i801_block_transaction_byte_by_byte(priv, data, read_write, command, hwpec);
> +	if ((priv->features & FEATURE_BLOCK_BUFFER) &&
> +	    command != I2C_SMBUS_I2C_BLOCK_DATA &&
> +	    i801_set_block_buffer_mode(priv) == 0) {
> +		result = i801_block_transaction_by_block(priv, data,
> +							 read_write, hwpec);
> +	} else {
> +		result = i801_block_transaction_byte_by_byte(priv, data,
> +							     read_write,
> +							     command, hwpec);
> +	}
> +
>  	if (result == 0 && hwpec)
>  		i801_wait_hwpec(priv);
> -	if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_WRITE) {
> +	if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
> +			read_write == I2C_SMBUS_WRITE) {
>  		/* restore saved configuration register value */
>  		//TODO: Figure out the right thing to do here...
>  		//pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc);
> @@ -399,32 +435,41 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
>  }
>
>  /* Return negative errno on error. */
> -static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags, char read_write, u8 command, int size, union i2c_smbus_data *data)
> +static s32 i801_access(struct i2c_adapter *adap, u16 addr,
> +		       unsigned short flags, char read_write, u8 command,
> +		       int size, union i2c_smbus_data *data)
>  {
>  	int hwpec;
>  	int block = 0;
>  	int ret, xact = 0;
>  	struct i2c_device *priv = i2c_get_adapdata(adap);
>
> -	hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
> +	hwpec = (priv->features & FEATURE_SMBUS_PEC) &&
> +		(flags & I2C_CLIENT_PEC) &&
> +		size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
>
>  	switch (size) {
>  	case I2C_SMBUS_QUICK:
>  		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_QUICK\n");
> -		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
> +		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
> +		       SMBHSTADD(priv));
> +
>  		xact = I801_QUICK;
>  		break;
>  	case I2C_SMBUS_BYTE:
>  		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE\n");
>
> -		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
> +		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
> +		       SMBHSTADD(priv));
>  		if (read_write == I2C_SMBUS_WRITE)
>  			outb_p(command, SMBHSTCMD(priv));
>  		xact = I801_BYTE;
>  		break;
>  	case I2C_SMBUS_BYTE_DATA:
>  		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE_DATA\n");
> -		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
> +		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
> +		       SMBHSTADD(priv));
> +
>  		outb_p(command, SMBHSTCMD(priv));
>  		if (read_write == I2C_SMBUS_WRITE)
>  			outb_p(data->byte, SMBHSTDAT0(priv));
> @@ -432,7 +477,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
>  		break;
>  	case I2C_SMBUS_WORD_DATA:
>  		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_WORD_DATA\n");
> -		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
> +		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
> +		       SMBHSTADD(priv));
> +
>  		outb_p(command, SMBHSTCMD(priv));
>  		if (read_write == I2C_SMBUS_WRITE) {
>  			outb_p(data->word & 0xff, SMBHSTDAT0(priv));
> @@ -442,7 +489,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
>  		break;
>  	case I2C_SMBUS_BLOCK_DATA:
>  		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BLOCK_DATA\n");
> -		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
> +		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
> +		       SMBHSTADD(priv));
> +
>  		outb_p(command, SMBHSTCMD(priv));
>  		block = 1;
>  		break;
> @@ -463,7 +512,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
>  		block = 1;
>  		break;
>  	default:
> -		dev_dbg(&priv->adapter.dev, "  [acc] Unsupported transaction %d\n", size);
> +		dev_dbg(&priv->adapter.dev,
> +			"  [acc] Unsupported transaction %d\n", size);
>  		return -EOPNOTSUPP;
>  	}
>
> @@ -472,13 +522,15 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
>  		outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_CRC, SMBAUXCTL(priv));
>  	} else {
>  		dev_dbg(&priv->adapter.dev, "  [acc] hwpec: no\n");
> -		outb_p(inb_p(SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC), SMBAUXCTL(priv));
> +		outb_p(inb_p(SMBAUXCTL(priv)) &
> +				(~SMBAUXCTL_CRC), SMBAUXCTL(priv));
>  	}
>
>  	if (block) {
>  		//ret = 0;
>  		dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
> -		ret = i801_block_transaction(priv, data, read_write, size, hwpec);
> +		ret = i801_block_transaction(priv, data, read_write, size,
> +					     hwpec);
>  	} else {
>  		dev_dbg(&priv->adapter.dev, "  [acc] block: no\n");
>  		ret = i801_transaction(priv, xact | ENABLE_INT9);
> @@ -490,7 +542,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
>  	 */
>  	if (hwpec || block) {
>  		dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
> -		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
> +		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC |
> +					SMBAUXCTL_E32B), SMBAUXCTL(priv));
>  	}
>  	if (block) {
>  		dev_dbg(&priv->adapter.dev, "  [acc] block\n");
> @@ -501,19 +554,22 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
>  		return ret;
>  	}
>  	if ((read_write == I2C_SMBUS_WRITE) || (xact == I801_QUICK)) {
> -		dev_dbg(&priv->adapter.dev, "  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\n");
> +		dev_dbg(&priv->adapter.dev,
> +			"  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\n");
>  		return 0;
>  	}
>
>  	switch (xact & 0x7f) {
>  	case I801_BYTE:  /* Result put in SMBHSTDAT0 */
>  	case I801_BYTE_DATA:
> -		dev_dbg(&priv->adapter.dev, "  [acc] I801_BYTE or I801_BYTE_DATA\n");
> +		dev_dbg(&priv->adapter.dev,
> +			"  [acc] I801_BYTE or I801_BYTE_DATA\n");
>  		data->byte = inb_p(SMBHSTDAT0(priv));
>  		break;
>  	case I801_WORD_DATA:
>  		dev_dbg(&priv->adapter.dev, "  [acc] I801_WORD_DATA\n");
> -		data->word = inb_p(SMBHSTDAT0(priv)) + (inb_p(SMBHSTDAT1(priv)) << 8);
> +		data->word = inb_p(SMBHSTDAT0(priv)) +
> +			     (inb_p(SMBHSTDAT1(priv)) << 8);
>  		break;
>  	}
>  	return 0;
> @@ -535,30 +591,47 @@ static u32 i801_func(struct i2c_adapter *adapter)
>  	// http://lxr.free-electrons.com/source/include/uapi/linux/i2c.h#L85
>
>  	u32 f =
> -		I2C_FUNC_I2C                     | /* 0x00000001 (I enabled this one) */
> -		!I2C_FUNC_10BIT_ADDR             | /* 0x00000002 */
> -		!I2C_FUNC_PROTOCOL_MANGLING      | /* 0x00000004 */
> -		((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) | /* 0x00000008 */
> -		!I2C_FUNC_SMBUS_BLOCK_PROC_CALL  | /* 0x00008000 */
> -		I2C_FUNC_SMBUS_QUICK             | /* 0x00010000 */
> -		!I2C_FUNC_SMBUS_READ_BYTE        | /* 0x00020000 */
> -		!I2C_FUNC_SMBUS_WRITE_BYTE       | /* 0x00040000 */
> -		!I2C_FUNC_SMBUS_READ_BYTE_DATA   | /* 0x00080000 */
> -		!I2C_FUNC_SMBUS_WRITE_BYTE_DATA  | /* 0x00100000 */
> -		!I2C_FUNC_SMBUS_READ_WORD_DATA   | /* 0x00200000 */
> -		!I2C_FUNC_SMBUS_WRITE_WORD_DATA  | /* 0x00400000 */
> -		!I2C_FUNC_SMBUS_PROC_CALL        | /* 0x00800000 */
> -		!I2C_FUNC_SMBUS_READ_BLOCK_DATA  | /* 0x01000000 */
> -		!I2C_FUNC_SMBUS_WRITE_BLOCK_DATA | /* 0x02000000 */
> -		((priv->features & FEATURE_I2C_BLOCK_READ) ? I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) | /* 0x04000000 */
> -		I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   | /* 0x08000000 */
> +		I2C_FUNC_I2C                     | /* 0x00000001(I enabled this
> +						    * one)
> +						    */
> +		!I2C_FUNC_10BIT_ADDR             |		/* 0x00000002 */
> +		!I2C_FUNC_PROTOCOL_MANGLING      |		/* 0x00000004 */
> +		((priv->features & FEATURE_SMBUS_PEC) ?
> +			I2C_FUNC_SMBUS_PEC : 0)  |		/* 0x00000008 */
> +		!I2C_FUNC_SMBUS_BLOCK_PROC_CALL  |		/* 0x00008000 */
> +		I2C_FUNC_SMBUS_QUICK             |		/* 0x00010000 */
> +		!I2C_FUNC_SMBUS_READ_BYTE	 |		/* 0x00020000 */
> +		!I2C_FUNC_SMBUS_WRITE_BYTE       |		/* 0x00040000 */
> +		!I2C_FUNC_SMBUS_READ_BYTE_DATA   |		/* 0x00080000 */
> +		!I2C_FUNC_SMBUS_WRITE_BYTE_DATA  |		/* 0x00100000 */
> +		!I2C_FUNC_SMBUS_READ_WORD_DATA   |		/* 0x00200000 */
> +		!I2C_FUNC_SMBUS_WRITE_WORD_DATA  |		/* 0x00400000 */
> +		!I2C_FUNC_SMBUS_PROC_CALL        |		/* 0x00800000 */
> +		!I2C_FUNC_SMBUS_READ_BLOCK_DATA  |		/* 0x01000000 */
> +		!I2C_FUNC_SMBUS_WRITE_BLOCK_DATA |		/* 0x02000000 */
> +		((priv->features & FEATURE_I2C_BLOCK_READ) ?
> +			I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) |	/* 0x04000000 */
> +		I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   |		/* 0x08000000 */
>
>  		I2C_FUNC_SMBUS_BYTE              | /* _READ_BYTE  _WRITE_BYTE */
> -		I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA  _WRITE_BYTE_DATA */
> -		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA  _WRITE_WORD_DATA */
> -		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
> -		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK  _WRITE_I2C_BLOCK */
> -		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC */
> +		I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA
> +						    * _WRITE_BYTE_DATA
> +						    */
> +		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA
> +						    * _WRITE_WORD_DATA
> +						    */
> +		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA
> +						    * _WRITE_BLOCK_DATA
> +						    */
> +		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK
> +						    * _WRITE_I2C_BLOCK
> +						    */
> +		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE
> +						    * _BYTE_DATA  _WORD_DATA
> +						    * _PROC_CALL
> +						    * _WRITE_BLOCK_DATA
> +						    * _I2C_BLOCK _PEC
> +						    */
>  	return f;
>  }
>
> @@ -611,7 +684,8 @@ static int pi2c_probe(struct platform_device *pldev)
>  	priv->adapter.retries = 3;
>
>  	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
> -	snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");
> +	snprintf(priv->adapter.name, sizeof(priv->adapter.name),
> +		 "Fake SMBus I801 adapter");
>
>  	err = i2c_add_adapter(&priv->adapter);
>  	if (err) {
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e374c2933a1f0a4eefa31c1f0d8553dbf22a57ac.1571899299.git.jamal.k.shareef%40gmail.com.
>

