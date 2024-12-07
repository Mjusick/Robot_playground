import csv


def read_from_csv(filepath):
    data = []
    with open(filepath, "r") as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data