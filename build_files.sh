# Build the poject
echo "Bulid the project..."
python3.10.11 -m pip install -r requirements.txt

echo "Make Migration..."
python3.10.11 manage.py makemigrations --noinput
python3.10.11 manage.py migrate --noinput

echo "collect static..."
python3.10.11 manage.py collectstatic --noinput --clear

